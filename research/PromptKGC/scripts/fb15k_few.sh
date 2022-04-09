CUDA_VISIBLE_DEVICES=0 python main.py --gpus "0," --max_epochs=50  --num_workers=16 \
   --model_name_or_path  bert-base-uncased \
   --accumulate_grad_batches 1 \
   --model_class KGBERT \
   --batch_size 32 \
   --check_val_every_n_epoch 3 \
   --data_dir dataset/FB15k-237_few \
   --max_seq_length 128 \
   --lr 5e-5 \
   --eval_batch_size 1000 \
   --wandb