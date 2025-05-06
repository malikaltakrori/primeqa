#!/usr/bin/env bash
set -xeo pipefail

# --model_name_or_path PrimeQA/squad-v1-roberta-large \
#                      PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
      
python primeqa/mrc/run_mrc.py \
    --model_name_or_path xlm-roberta-large \
    --fp16 --learning_rate 4e-5 \
    --do_train --do_eval --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 128 --gradient_accumulation_steps 4 \
    --warmup_ratio 0.1 --weight_decay 0.1 --save_steps 50000 \
    --output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/xlm_ \
    --overwrite_output_dir --num_train_epochs 1 \
    --postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
    --eval_metrics SQUAD \
    --evaluation_strategy no --overwrite_cache