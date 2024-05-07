# Distrobox
1. Install from [this PPA](https://launchpad.net/~michel-slm/+archive/ubuntu/distrobox).
```bash
sudo add-apt-repository ppa:michel-slm/distrobox
sudo apt install distrobox
```
2. Install a distro (the host kernel will be used). The images are pulled from dockerhub.
```bash
distrobox-create --name container-name --image os-image:version
```

For an Ubuntu 20.04 image:
```bash
distrobox-create --name ubuntu --image ubuntu:24.04
```

3. Now start the container:
```bash
distrobox enter container-name
``` 
For our ubuntu container:
```bash
distrobox enter ubuntu
```

To use nvidia GPU in the container, you need to install the nvidia driver on the host and then start the container with the `--nvidia` flag:
```bash
distrobox enter container-name --nvidia
```
