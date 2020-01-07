pip3tool:
	docker build -t docker.pkg.github.com/agilesyndrome/syndromeos-python/$(TOOL_NAME):$(TOOL_VERSION) --build-arg toolVersion=$(TOOL_VERSION) --build-arg toolName=$(TOOL_NAME) -f Dockerfile.pip3tool .
        docker push docker.pkg.github.com/agilesyndrome/syndromeos-python/$(TOOL_NAME):$(TOOL_VERSION)
awscli:
	docker build -t docker.pkg.github.com/agilesyndrome/syndromeos-python/awscli:$(AWSCLI_VERSION) --build-arg awscliVersion=$(AWSCLI_VERSION) -f Dockerfile.awscli .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-python/awscli:$(AWSCLI_VERSION)

aws2cli:
	docker build -t docker.pkg.github.com/agilesyndrome/syndromeos-python/aws2cli:2.0.0dev --build-arg awscliVersion=2.0.0dev -f Dockerfile.aws2cli .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-python/aws2cli:2.0.0dev

all:
	make AWSCLI_VERSION=1.16.310 awscli
	make aws2cli
