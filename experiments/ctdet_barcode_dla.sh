# train
python main.py ctdet --exp_id dla --batch_size 16 --lr 1.25e-4  --gpus 0 --dataset barcode

# demo
python demo.py ctdet --dataset barcode --exp_id dla --demo '/hdd/namdng/barcode/python/BarcodeDatasets/exp_aligned' --load_model ../exp/ctdet/dla/model_best.pth --gpus 0