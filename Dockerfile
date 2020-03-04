FROM alpine:3.9.5
COPY . .
RUN ls -lhd .?*
RUN [ ! -f should-be-dockerignored.txt ]

CMD ["echo", "Testing that docker-compose enforces .dockerignore rules when building from repo"]
