FROM python:3.13

RUN pip install poetry

RUN poetry config virtualenvs.create true

RUN apt-get update && apt-get install -y wget gnupg lsb-release && apt-get clean

RUN wget -O - https://apt.releases.hashicorp.com/gpg |  gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" |  tee /etc/apt/sources.list.d/hashicorp.list

RUN apt update &&  apt install terraform