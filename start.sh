pip install -r requirements.txt
pip install vllm
# pip install modelscope
# 安装核心工具（已安装 datasets 库可跳过，CLI 已包含）

# modelscope download --dataset gongjy/minimind_dataset pretrain_hq.jsonl --local_dir ./dataset
./hfd.sh jingyaogong/minimind_dataset  --dataset --local_dir ./dataset

#检查./dataset下文件是否存在
if [ ! -f "./dataset/pretrain_hq.jsonl" ]; then
    echo "pretrain_hq.jsonl not exist"
    exit 1
fi

cd trainer/;python train_pretrain.py