# docker-node-addon

This project contains should be used for building your nodejs addon using node-gyp. It consists of a docker file and an example addon (located in the src/ folder)

Usage
-----
Build the container by running:

`docker build -t node-addon/base .`

Place the you binding.gyp in the src/ folder and run:

`docker run -v $(pwd)/src:/addon node-addon/base`

to build your node addon
