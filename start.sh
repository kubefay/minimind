pip install -r requirements.txt
pip install modelscope
modelscope download --dataset gongjy/minimind_dataset pretrain_hq.jsonl --local_dir ./dataset

#检查./dataset下文件是否存在
if [ ! -f "./dataset/pretrain_hq.jsonl" ]; then
    echo "pretrain_hq.jsonl not exist"
    exit 1
fi

cd trainer/;python train_pretrain.py