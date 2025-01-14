#!/usr/bin/env bash

# Copyright 2020 Johns Hopkins University (Shinji Watanabe)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)
# MSR OPEN IN data copyright https://msropendata-web-api.azurewebsites.net/licenses/a889b26e-5149-4486-866e-ec896bb728c4/view
# For data please cite 

# @inproceedings{srivastava2018interspeech,
#  title={Interspeech 2018 Low Resource Automatic Speech Recognition Challenge for Indian Languages.},
#  author={Srivastava, Brij Mohan Lal and Sitaram, Sunayana and Mehta, Rupesh Kumar and Mohan, Krishna Doss and Matani, Pallavi and Satpal, Sandeepkumar and Bali, Kalika and Srikanth, Radhakrishnan and Nayak, Niranjan},
#  booktitle={SLTU},
#  pages={11--14},
#  year={2018}
# }
#
. ./path.sh || exit 1;
. ./cmd.sh || exit 1;
. ./db.sh || exit 1;

# general configuration
stage=0       # start from 0 if you need to start from data preparation
stop_stage=13 # Change to 16 if you need the model to be uploaded to espnet hub
SECONDS=0
lang=te # te gu ta

 . utils/parse_options.sh || exit 1;

log() {
    local fname=${BASH_SOURCE[1]##*/}
    echo -e "$(date '+%Y-%m-%dT%H:%M:%S') (${fname}:${BASH_LINENO[0]}:${FUNCNAME[1]}) $*"
}

mkdir -p ${COMMONVOICE}
if [ -z "${COMMONVOICE}" ]; then
    log "Fill the value of 'COMMONVOICE' of db.sh"
    exit 1
fi

# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

train_set=train_"$(echo "${lang}" | tr - _)"
train_dev=dev_"$(echo "${lang}" | tr - _)"
test_set=test_"$(echo "${lang}" | tr - _)"

log "data preparation started"

if [ ${stage} -le 0 ] && [ ${stop_stage} -ge 0 ]; then 
    log "stage1: Download data to ${COMMONVOICE}"
    log "The default data of this recipe is from  msropenin"
    mkdir -p ${COMMONVOICE}/msropenin
    git lfs install
    git clone https://huggingface.co/bhanu77prakash/msropenin_${lang}
    tar -xvf msropenin_${lang}/${lang}.tar.gz
    mv ${lang} ${COMMONVOICE}/msropenin/
    rm -rf msropenin_${lang}
fi

if [ ${stage} -le 1 ] && [ ${stop_stage} -ge 1 ]; then
    log "stage2: Preparing data for commonvoice"
    ### Task dependent. You have to make data the following preparation part by yourself.
    for part in "validated" "test" "dev"; do
        # use underscore-separated names in data directories.
        local/data_prep.pl "${COMMONVOICE}/msropenin/${lang}" ${part} data/"$(echo "${part}_${lang}" | tr - _)"
    done

    # remove test&dev data from validated sentences
    utils/copy_data_dir.sh data/"$(echo "validated_${lang}" | tr - _)" data/${train_set}
    utils/filter_scp.pl --exclude data/${train_dev}/wav.scp data/${train_set}/wav.scp > data/${train_set}/temp_wav.scp
    utils/filter_scp.pl --exclude data/${test_set}/wav.scp data/${train_set}/temp_wav.scp > data/${train_set}/wav.scp
    utils/fix_data_dir.sh data/${train_set}
fi

log "Successfully finished. [elapsed=${SECONDS}s]"
