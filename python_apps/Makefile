AWSCLI_VERSION=1.16.310
awscli:
	docker build -t agilesyndrome/awscli:$(AWSCLI_VERSION) --build-arg awscliVersion=$(AWSCLI_VERSION) -f Dockerfile.awscli .
	docker push agilesyndrome/awscli:$(AWSCLI_VERSION)

aws2cli:
	docker build -t agilesyndrome/aws2cli:2.0.0dev --build-arg awscliVersion=2.0.0dev -f Dockerfile.aws2cli .
	docker push agilesyndrome/aws2cli:2.0.0dev
