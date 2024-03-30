sudo docker build -t adutora-image:latest -f adutora.Dockerfile .;
sudo xhost +local:docker;
python3 -m venv venv;
. venv/bin/activate;
pip3 install -r requirements.txt;
pip3 install pre-commit;