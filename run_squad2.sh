export SQUAD_DIR=Squad2-data

python ALBERT.py \
  --model_type albert \
  --model_name_or_path albert-xxlarge-v1 \
  --config_name /home/shirk/projects/ALBERT-google/output3/checkpoint-18835 \
  --do_eval \
  --do_lower_case \
  --train_file $SQUAD_DIR/train-v2.0.json \
  --predict_file $SQUAD_DIR/dev-v2.0.json \
  --per_gpu_train_batch_size 36 \
  --learning_rate 3e-5 \
  --num_train_epochs 5 \
  --max_seq_length 128 \
  --doc_stride 128 \
  --output_dir /home/shirk/projects/ALBERT-google/output3/checkpoint-18835 \
  --evaluate_during_training \