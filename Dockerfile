FROM registry.access.redhat.com/ubi8/nginx-118

ADD nginx.conf "${NGINX_CONF_PATH}"
ADD .htpasswd /etc/apache2/
COPY public $HOME
CMD ["nginx", "-g", "daemon off;"]