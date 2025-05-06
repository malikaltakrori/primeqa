#!/usr/bin/env bash                                                                                                                                                               

export train_fof_including_tydi_squad="/Users/maltak/Code/primeAll/primeqa/Maliks/configs/train_tydi_sq.csv"

python primeqa/mrc/run_mrc.py --model_name_or_path xlm-roberta-large \
--train_fof ${train_fof_including_tydi_squad} \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/xlm_ty_sq \