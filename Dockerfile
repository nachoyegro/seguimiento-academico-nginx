FROM nginx:1.13.3

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/

RUN rm /etc/nginx/conf.d/default.conf
COPY seguimiento-academico.conf /etc/nginx/conf.d/
COPY seguimiento-academico-ds.conf /etc/nginx/conf.d/
COPY seguimiento-academico-front.conf /etc/nginx/conf.d/
