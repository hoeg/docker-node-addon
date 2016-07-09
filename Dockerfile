FROM debian

RUN apt-get update && apt-get install -y \
	build-essential \
	npm \
	wget \
&& rm -rf /var/lib/apt/lists/*	

RUN npm cache clean -f
RUN npm install -g n
RUN n stable

RUN npm install -g node-gyp

RUN mkdir /addon
WORKDIR /addon 

ENTRYPOINT ["node-gyp"]
CMD ["configure", "build"]
	 
