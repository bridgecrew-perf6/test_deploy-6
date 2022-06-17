FROM nginx:stable-alpine as production-stage
RUN apt-get install -y docker-ce-cli
COPY ./ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
