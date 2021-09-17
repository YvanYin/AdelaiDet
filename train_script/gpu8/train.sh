export PYTHONPATH=/home/ubuntu/Projects/SIW/AdelaiDet

TIME=$(date +"%m-%d-%Y-%H-%M-%S")
LOG=$TIME.txt


export DETECTRON2_DATASETS=/home/ubuntu/Projects/SIW/AdelaiDet/datasets

python ../../tools/train_net.py \
       --config-file ../../configs/CondInst/MS_R_50_3x_objects365.yaml \
       --num-gpus 8 \
       OUTPUT_DIR outputs \
       MODEL.WEIGHTS ../../pretrained_weight/condins_pretrain_R-50.pkl \
       DATALOADER.NUM_WORKERS 32 \
       SOLVER.IMS_PER_BATCH 32 \
       2>&1 | tee $LOG