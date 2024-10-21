Remove all nvidia pytorch stuff.

```
pip list | grep nvidia
```

Install Rocm Pytorch from [here](https://pytorch.org/get-started/previous-versions/).

```
pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/rocm5.4.2
```

Allocate resources

```salloc --partition=gpu --qos=gpu-shd --gres=gpu:1 --time=00:10:00 --account=ta157-prakhars```


Jump into the node.

```
srun --pty /bin/bash
```
