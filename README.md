# gitbookd

使用gitbook创作的docker 镜像

## 环境要求

请在您的系统上安装最新版本的docker应用，当前我所使用的是Docker version 18.09.4

## 使用方法及步骤

> 1. 创建目录gitbookd
> 2. 从https://github.com/AsinRay/gitbookd.git克隆项目到gitbookd目录
> 3. 执行 docker bulid -t ray/gitbookd:1.0.0
> 4. 执行 docker run -d -v $(pwd):/srv/gitbook -p 80:4000 --name gitbook ray/gitbook:1.0.0
> 5. 使用浏览器访问localhost即可
> 6. 在宿主机的gitbookd目录下编辑您的markdown文档,然后刷新浏览器即可实时同步

## 需要注意的问题

> 1. 如果您需要reload server 的支持，请在第４步中加入-p 35729:35729参数，然后在浏览器中安装livereload 插件,下载地址：<http://livereload.com/>
> 2. 如果您需要在其它目录下编辑markdown文档，请在第４步中将 $(pwd):/srv/gitbook 替换成 /xxx:/srv/gitbook ,其中xxx为您指定的目录，详细信息请查阅docker相关文档。
> 3. 如果您还有其它的需求,欢迎您提交issue.