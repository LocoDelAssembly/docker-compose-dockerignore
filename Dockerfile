FROM alpine:3.9.5
COPY . .
RUN ls -lah
RUN cat .dockerignore
RUN [ ! -f should-be-dockerignored.txt ]

CMD ["echo", "Testing that docker-compose enforces .dockerignore rules when building from repo"]
