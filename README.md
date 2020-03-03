# Testing docker-compose behaviour of .dockerignore
All testing is performed at [Travis CI](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore/branches)

## master branch [![Build Status](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore.svg?branch=master)](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore)
It builds a container from a git repo branch (in this case [mock-remote-repo](https://github.com/LocoDelAssembly/docker-compose-dockerignore/tree/mock-remote-repo)) that does have a `.dockerignore` file.
It fails to process `.dockerignore` included in the branch and the build ends up failing.

## build-with-docker branch [![Build Status](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore.svg?branch=build-with-docker)](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore)
As master branch, but [using docker](https://github.com/LocoDelAssembly/docker-compose-dockerignore/blob/8da25f0d99fad14182077b099189ffba51e91429/.travis.yml#L9) to build the image and [referencing it](https://github.com/LocoDelAssembly/docker-compose-dockerignore/blob/8da25f0d99fad14182077b099189ffba51e91429/docker-compose.yml#L4) in `docker-compose.yml`. This time `.dockerignore` is processed correctly.

## mock-remote-repo branch [![Build Status](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore.svg?branch=mock-remote-repo)](https://travis-ci.org/LocoDelAssembly/docker-compose-dockerignore)
Builds with docker-compose but this time building locally. `.dockerignore` file is processed correctly without having to build separately like in build-with-docker branch.
