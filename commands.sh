## Mumbai URL

### EC2-training with CPU
763104351884.dkr.ecr.ap-south-1.amazonaws.com/pytorch-training:1.13.0-cpu-py39-ubuntu20.04-ec2
### EC2-inference with CPU
763104351884.dkr.ecr.ap-south-1.amazonaws.com/pytorch-inference:1.13.0-cpu-py39-ubuntu20.04-ec2

### SM-training with GPU
763104351884.dkr.ecr.ap-south-1.amazonaws.com/pytorch-training:1.12.1-gpu-py38-cu113-ubuntu20.04-sagemaker
### SM-inference with CPU
763104351884.dkr.ecr.ap-south-1.amazonaws.com/pytorch-inference:1.12.1-cpu-py38-ubuntu20.04-sagemaker




## For Docker Login
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 763104351884.dkr.ecr.ap-south-1.amazonaws.com



#### DOCKER ####

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo usermod -a -G docker ubuntu && sudo reboot



### DockerFile

