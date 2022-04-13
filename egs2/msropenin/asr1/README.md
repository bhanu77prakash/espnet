<!-- Generated by scripts/utils/show_asr_result.sh -->

### Data citations
``` 
 @inproceedings{srivastava2018interspeech,
  title={Interspeech 2018 Low Resource Automatic Speech Recognition Challenge for Indian Languages.},
  author={Srivastava, Brij Mohan Lal and Sitaram, Sunayana and Mehta, Rupesh Kumar and Mohan, Krishna Doss and Matani, Pallavi and Satpal, Sandeepkumar and Bali, Kalika and Srikanth, Radhakrishnan and Nayak, Niranjan},
  booktitle={SLTU},
  pages={11--14},
  year={2018}
 }
```

### Trained models
```
sudo apt install git-lfs / brew install git-lfs (to install lfs)
git lfs install
git clone https://huggingface.co/bhanu77prakash/msropenin
```

## How to use fusion of front-ends : 

We provide in this recipe a example configuration file using several front-ends and a linear fusion to combine them. 
The configuration file is [here](https://github.com/DanBerrebbi/espnet/blob/master/egs2/commonvoice/asr1/conf/tuning/train_asr_fused_frontends.yaml#L22-L50), we highlighted the lines defning the front-end fusion. 
For more details on how use fusion of front-ends, you can refer to this [wiki](https://github.com/DanBerrebbi/espnet/blob/master/egs2/commonvoice/asr1/Fusing_ASR_frontends_in_Espnet2.md).


# RESULTS
## Environments
- date: `Tue Mar 15 20:37:30 UTC 2022`
- python version: `3.9.7 (default, Sep 16 2021, 13:09:58)  [GCC 7.5.0]`
- espnet version: `espnet 0.10.7a1`
- pytorch version: `pytorch 1.10.1`
- Git hash: `f91410f712d1287cd6809c5bf26b54c5a40fe314`
  - Commit date: `Mon Mar 14 22:32:17 2022 -0400`

## asr_train_asr_conformer5_raw_te_bpe150_sp
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_te_bpe150_valid.loss.ave_asr_model_valid.acc.ave/dev_te|8918|48197|75.3|22.1|2.6|2.9|27.6|59.2|
|decode_asr_lm_lm_train_lm_te_bpe150_valid.loss.ave_asr_model_valid.acc.ave/test_te|3040|28413|77.7|20.1|2.3|2.7|25.0|80.3|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_te_bpe150_valid.loss.ave_asr_model_valid.acc.ave/dev_te|8918|356880|94.7|2.8|2.5|2.1|7.3|59.2|
|decode_asr_lm_lm_train_lm_te_bpe150_valid.loss.ave_asr_model_valid.acc.ave/test_te|3040|229419|95.6|2.2|2.2|1.8|6.2|80.3|

### TER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_te_bpe150_valid.loss.ave_asr_model_valid.acc.ave/dev_te|8918|227604|91.1|5.7|3.2|2.1|11.0|59.2|
|decode_asr_lm_lm_train_lm_te_bpe150_valid.loss.ave_asr_model_valid.acc.ave/test_te|3040|147291|92.6|4.7|2.6|1.8|9.2|80.3|

## asr_train_asr_conformer5_raw_ta_bpe150_sp
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_ta_bpe150_valid.loss.ave_asr_model_valid.acc.ave/dev_ta|7858|48822|75.9|21.5|2.6|3.0|27.1|64.3|
|decode_asr_lm_lm_train_lm_ta_bpe150_valid.loss.ave_asr_model_valid.acc.ave/test_ta|3081|29351|77.6|20.0|2.4|3.0|25.4|81.2|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_ta_bpe150_valid.loss.ave_asr_model_valid.acc.ave/dev_ta|7858|392889|95.1|2.2|2.7|2.0|6.9|64.3|
|decode_asr_lm_lm_train_lm_ta_bpe150_valid.loss.ave_asr_model_valid.acc.ave/test_ta|3081|249879|95.8|1.8|2.4|1.6|5.8|81.2|

### TER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_ta_bpe150_valid.loss.ave_asr_model_valid.acc.ave/dev_ta|7858|210013|91.0|5.7|3.2|1.9|10.8|64.1|
|decode_asr_lm_lm_train_lm_ta_bpe150_valid.loss.ave_asr_model_valid.acc.ave/test_ta|3081|135160|92.3|4.9|2.8|1.4|9.2|80.7|

## asr_train_asr_conformer5_raw_gu_bpe100_sp
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_gu_bpe100_valid.loss.ave_asr_model_valid.acc.ave/dev_gu|4520|55511|79.2|18.9|1.8|2.0|22.8|84.4|
|decode_asr_lm_lm_train_lm_gu_bpe100_valid.loss.ave_asr_model_valid.acc.ave/test_gu|3075|36335|81.2|17.0|1.8|1.8|20.5|81.4|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_gu_bpe100_valid.loss.ave_asr_model_valid.acc.ave/dev_gu|4520|324094|95.0|2.7|2.3|1.9|6.9|84.4|
|decode_asr_lm_lm_train_lm_gu_bpe100_valid.loss.ave_asr_model_valid.acc.ave/test_gu|3075|210635|95.4|2.3|2.3|1.7|6.3|81.4|

### TER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_gu_bpe100_valid.loss.ave_asr_model_valid.acc.ave/dev_gu|4520|245412|93.2|4.3|2.5|1.8|8.7|84.4|
|decode_asr_lm_lm_train_lm_gu_bpe100_valid.loss.ave_asr_model_valid.acc.ave/test_gu|3075|159495|93.8|3.7|2.5|1.6|7.8|81.4|