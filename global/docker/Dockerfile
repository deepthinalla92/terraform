FROM centos
ADD ["./script.sh", "/app/"]
RUN ["/bin/sh", "/app/script.sh"]
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
