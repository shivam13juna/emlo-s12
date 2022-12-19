FROM 763104351884.dkr.ecr.ap-south-1.amazonaws.com/pytorch-training:1.12.1-gpu-py38-cu113-ubuntu20.04-sagemaker

COPY requirements.txt /tmp/requriements.txt

RUN pip3 install -r /tmp/requriements.txt

ENV PATH="/opt/ml/code:${PATH}"

COPY .  /opt/ml/code

WORKDIR /opt/ml/code