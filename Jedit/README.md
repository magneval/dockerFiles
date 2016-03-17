build :
``` bash
docker build -t magneval/jedit  ~/Projets/dockerFiles/Jedit/
alias dockerX11run='docker run -ti --rm --privileged=true -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY --net host '
```
run :
``` bash
dockerX11run -ti -v ~/Projets/exemples/:/home/developer/src magneval/jedit

```



