# ffmpegif

My daily tricks that convert videoes to gifs

## build
```shell
docker buildx build --platform linux/amd64,linux/arm64 -t zengxu/ffmpegif --push .
``` 

## example
convert `demo.mp4` in current directory
```shell
docker run --rm -v $PWD:/output -w /output  zengxu/ffmpegif demo.mp4
```

outputs `demo.mp4.gif` in current directory

<img src="./demo.mp4.gif" width="200px"/>

```
$ ls
Dockerfile	README.md	demo.mp4	demo.mp4.gif	run.sh
```