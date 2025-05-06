#!/usr/bin/env bash                                                                                                                                                               
set -xeo pipefail

# --model_name_or_path PrimeQA/squad-v1-roberta-large \
#                      PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
      
python primeqa/mrc/run_mrc.py \
    --model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
    --eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_En-Q.jsonl \
    --preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
    --postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
    --eval_metrics SQUAD \
    --output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArEn \
    --do_eval --per_device_eval_batch_size 8 \
    --overwrite_output_dir --overwrite_cache


python primeqa/mrc/run_mrc.py \
--model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
--eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_MSA-Q.jsonl \
--preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArMSA \
--do_eval --per_device_eval_batch_size 8 \
--overwrite_output_dir --overwrite_cache


python primeqa/mrc/run_mrc.py \
--model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
--eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_arz-Q.jsonl \
--preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArARZ \
--do_eval --per_device_eval_batch_size 8 \
--overwrite_output_dir --overwrite_cache


python primeqa/mrc/run_mrc.py \
--model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
--eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_ary-Q.jsonl \
--preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArARY \
--do_eval --per_device_eval_batch_size 8 \
--overwrite_output_dir --overwrite_cache


python primeqa/mrc/run_mrc.py \
--model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
--eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_ars-Q.jsonl \
--preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArARS \
--do_eval --per_device_eval_batch_size 8 \
--overwrite_output_dir --overwrite_cache


python primeqa/mrc/run_mrc.py \
--model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
--eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_apc-Q.jsonl \
--preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArAPC \
--do_eval --per_device_eval_batch_size 8 \
--overwrite_output_dir --overwrite_cache


python primeqa/mrc/run_mrc.py \
--model_name_or_path PrimeQA/nq_tydi-reader-xlmr_large-20221210 \
--eval_file /Users/maltak/Datasets/Belebele/BeleSQuAD/AR-P_acm-Q.jsonl \
--preprocessor primeqa.mrc.processors.preprocessors.squad.SQUADPreprocessor \
--postprocessor primeqa.mrc.processors.postprocessors.squad.SQUADPostProcessor \
--eval_metrics SQUAD \
--output_dir /Users/maltak/Datasets/Belebele/BeleSQuAD/Results_Ar/ArACM \
--do_eval --per_device_eval_batch_size 8 \
--overwrite_output_dir --overwrite_cache
