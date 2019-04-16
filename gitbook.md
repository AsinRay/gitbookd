# gitbook 内网搭建

## 使用Dockerfile 构建自己的gitbook

```sh
 docker build -t ray/gitbook:1.0.0 .
 # 其中的-t 表示tag 一般使用 [组织名/项目名:版本号]的命名规则来命名
 # 最后一个. 表示了使用当前目录下的Dockerfile来进行构建
```

## 编译 gitbook 的内容(可选择执行)

```sh
docker run  ray/gitbook:1.0.0 gitbook build . /srv/html
# 执行docker 容器的 gitbook build . /srv/html，生成html文件到/srv/html目录
# 执行完成后退出，在关生成的目录位置请参考Dockerfile中的相关设置
```

## 运行docker启动gitbook服务

```sh
docker run -p 80:4000 --name gitbook ray/gitbook:1.0.0

```

## 在宿主机上同步文章 (bind Mounting)

```sh
# docker run -d -v $(pwd):/usr/share/nginx/html -p 80:4000 --name gitbook ray/gitbook:1.0.0
docker run -d -v /srv/gitbook:/srv/gitbook -p 80:4000 --name gitbook ray/gitbook:1.0.0
```