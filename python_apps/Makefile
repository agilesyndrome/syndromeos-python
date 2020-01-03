AWSCLI_VERSION=1.16.310
awscli:
	docker build -t agilesyndrome/awscli:$(AWSCLI_VERSION) --build-arg awscliVersion=$(AWSCLI_VERSION) -f Dockerfile.awscli .
	docker push agilesyndrome/awscli:$(AWSCLI_VERSION)
