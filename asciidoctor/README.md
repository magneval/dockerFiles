build :
``` bash
docker build -t magneval/asciidoctor ~/Projets/dockerFiles/asciidoctor
```
run :
``` bash
docker run -ti --rm -v ~/Projets/magneval.github.io/MigrationAngular/:/home/developer/src magneval/asciidoctor
```



