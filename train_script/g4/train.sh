export PYTHONPATH=/home/ubuntu/Projects/SIW/AdelaiDet

TIME=$(date +"%m-%d-%Y-%H-%M-%S")
LOG=$TIME.txt

export DETECTRON2_DATASETS=/home/ubuntu/Projects/SIW/AdelaiDet/datasets

python ../../tools/train_net.py \
       --config-file ../../configs/CondInst/MS_R_50_1x_objects365.yaml \
       --num-gpus 4 \
       OUTPUT_DIR outputs \
       MODEL.WEIGHTS ../../pretrained_weight/condins_pretrain_R-50.pkl \
       DATALOADER.NUM_WORKERS 4 \
       2>&1 | tee $LOG