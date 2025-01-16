## 说明
在含有代理的服务器执行
```
socat TCP4-LISTEN:8123,fork TCP4:registry.npmmirror.com:80
```
构建镜像
```
docker build  --build-arg HTTP_PROXY=http://12.0.0.40:8123  --build-arg HTTPS_PROXY=http://12.0.0.40:8123   -f Dockerfile   -t ccr.ccs.tencentyun.com/gz-xjcsro-1036/sandbox-middle:test     .
```
有关socat的内容，请[参考](https://medium.com/@paxprajapati/preferring-socat-over-netcat-785fc590a050)

