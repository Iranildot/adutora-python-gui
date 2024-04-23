# syntax=docker/dockerfile:1

FROM fedora:38

WORKDIR /app
COPY requirements.txt .

RUN sudo dnf upgrade -y --refresh && \
    sudo dnf install -y python && \
    sudo dnf install -y python3-pip && \
    sudo dnf install -y curl && \
    sudo curl -O https://rpmfind.net/linux/fedora/linux/releases/38/Everything/x86_64/os/Packages/m/mtdev-1.1.6-5.fc38.x86_64.rpm && \
    sudo dnf install -y mtdev-1.1.6-5.fc38.x86_64.rpm && \
    sudo curl -O https://rpmfind.net/linux/fedora/linux/releases/38/Everything/x86_64/os/Packages/l/libglvnd-glx-1.6.0-2.fc38.x86_64.rpm && \
    sudo dnf install -y libglvnd-glx-1.6.0-2.fc38.x86_64.rpm && \
    pip3 install -r requirements.txt

COPY . .

CMD ["python3", "app.py"]