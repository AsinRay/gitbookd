# gitbookd

使用gitbook创作的docker 镜像

## 环境要求

请在您的系统上安装最新版本的docker应用，当前我所使用的是Docker version 18.09.4

## 使用方法及步骤

> 1. 创建目录gitbookd
> 2. 从<https://github.com/AsinRay/gitbookd.git>克隆项目到gitbookd目录
> 3. 执行 docker bulid -t ray/gitbookd:1.0.0 .
> 4. 执行 docker run -d -v $(pwd):/srv/gitbook -p 80:4000 --name gitbook ray/gitbook:1.0.0
> 5. 使用浏览器访问localhost即可
> 6. 在宿主机的gitbookd目录下编辑您的markdown文档,然后刷新浏览器即可实时同步

## 需要注意的问题

> 1. 如果您使用的是中国大陆的网络，可能在执行第三步时失败，提示连接到docker的registry失败，可能是G.W.F在作祟，请您更换网络或者是使用大陆的docker mirror,请参照 [设置registry的mirror].
>2. 如果您需要reload server 的支持，请在第４步中加入-p 35729:35729参数，然后在浏览器中安装livereload 插件,下载地址：<http://livereload.com/>
> 3. 如果您需要在其它目录下编辑markdown文档，请在第４步中将 $(pwd):/srv/gitbook 替换成 /xxx:/srv/gitbook ,其中xxx为您指定的目录，详细信息请查阅docker相关文档。
> 4. 如果您还有其它的需求,欢迎您提交issue.

## 设置registry的mirror

在debian系的系统中可以使用如下shell设置registry的mirror

```sh
sudo echo "DOCKER_OPTS=\"--registry-mirror=https://registry.docker-cn.com\"" >> /etc/default/docker
service docker restart
```

您也可以使用[Docker CN 指引](https://www.docker-cn.com/registry-mirror)来设置您的registry mirror.