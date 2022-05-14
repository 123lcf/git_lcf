FROM centos:7
LABEL maintainer="1228620750@qq.com"
COPY  ./nginx.repo  /etc/yum.repos.d
RUN yum makecache
RUN yum install -y nginx
RUN echo "Hello! this is lcf nginx server" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
