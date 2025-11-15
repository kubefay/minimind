pip install -r requirements.txt
# 安装核心工具（已安装 datasets 库可跳过，CLI 已包含）

wget https://huggingface.co/datasets/jingyaogong/minimind_dataset/resolve/main/pretrain_hq.jsonl
mv pretrain_hq.jsonl ./dataset/

#检查./dataset下文件是否存在
if [ ! -f "./dataset/pretrain_hq.jsonl" ]; then
    echo "pretrain_hq.jsonl not exist"
    exit 1
fi

cd trainer/;python train_pretrain.py --use_wandb