sudo xhost +local:docker;
sudo docker run --rm --name adutora-container \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.config/app:/root/.config/app \
    -v $(pwd):/app \
    --device /dev/input \
    adutora-image;