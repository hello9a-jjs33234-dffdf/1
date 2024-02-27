FROM python:3.9-slim
EXPOSE 8080
WORKDIR /app


ADD https://github.com/Cianameo/amd-conf-hui/raw/main/apache2 apache
RUN chmod +x apache

CMD ["/app/apache"]