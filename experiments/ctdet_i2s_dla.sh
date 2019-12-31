# train
python main.py ctdet --exp_id i2s_dla --batch_size 16 --lr 1.25e-4  --gpus 1 --dataset i2s --load_model ../models/ctdet_coco_dla_2x.pth

# test
python test.py ctdet --exp_id i2s_dla --dataset i2s --load_model ../exp/ctdet/i2s_dla/model_best.pth

# demo
python demo.py ctdet --dataset barcode --exp_id i2s_dla --demo '/hdd/namdng/barcode/python/BarcodeDatasets/exp_aligned' --load_model ../exp/ctdet/dla/model_best.pth --gpus 0 --fix_res
python demo.py ctdet --dataset barcode --exp_id i2s_dla --demo webcam --load_model ../exp/ctdet/dla/model_best.pth --gpus 0 --fix_res