sudo xhost +local:docker;
sudo docker run --rm --name adutora-container \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.config/app:/root/.config/app \
    --device /dev/input \
    adutora-image;