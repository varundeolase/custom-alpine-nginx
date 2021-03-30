# custom-alpine-nginx

Custom alpine image created from scratch using alpine-linux tar.

- From root folder run `docker build -t varun-nginx .` to build the image

- Now move to nginx folder using `cd nginx`. And from here create another docker file while uses previously created alpine image as it's base image.

- Run - `docker build -t nginx-final .` to create a docker image.

- Now to run container run - `docker run -d -p 80:80 -p 443:443 varun-nginx`. This will start the container.
  You can check the running container by command `docker ps`.

- Open 'localhost:80'  in browser or run `curl http://localhost:80` inside the container to see 'Hello from Nginx'.
