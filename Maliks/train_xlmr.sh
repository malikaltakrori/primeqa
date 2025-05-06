#!/usr/bin/env bash

mamba activate 

python primeqa/mrc/run_mrc.py --model_name_or_path xlm-roberta-large \
    --output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/Alm_sq_1e \
    --train_fof /Users/maltak/Code/primeAll/primeqa/Maliks/configs/train_tydi_sq.csv \
    --eval_fof /Users/maltak/Code/primeAll/primeqa/Maliks/configs/eval_squad.csv \
    --do_train --do_eval --max_train_samples 100 --max_eval_samples 20 \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 128 --gradient_accumulation_steps 4 \
    --warmup_ratio 0.1 --weight_decay 0.1 --save_steps 50000 \
    --overwrite_output_dir --num_train_epochs 1 \
    --postprocessor  primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
    --eval_metrics  SQUAD \
    --evaluation_strategy no --overwrite_cache 