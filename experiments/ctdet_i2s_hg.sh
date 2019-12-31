# train
python main.py ctdet --exp_id i2s_hg --batch_size 2 --lr 1.25e-4  --gpus 0 --dataset i2s --load_model ../models/ctdet_coco_hg.pth --arch hourglass

# test
python test.py ctdet --exp_id i2s_hg --dataset i2s --load_model ../exp/ctdet/i2s_hg/model_best.pth --arch hourglass

# demo
python demo.py ctdet --dataset i2s --exp_id i2s_hg --demo '/hdd/namdng/barcode/python/BarcodeDatasets/exp_aligned' --load_model ../exp/ctdet/i2s_hg/model_best.pth --gpus 0 --fix_res --arch hourglass
python demo.py ctdet --dataset i2s --exp_id i2s_hg_30_12 --demo '/hdd/namdng/CenterNet/data/image2slide_val/images' --load_model ../exp/ctdet/i2s_hg_30_12/model_best.pth --gpus 1 --fix_res --arch hourglass