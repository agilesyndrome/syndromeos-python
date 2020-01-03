docker:
	docker build --build-arg pythonVersion=$(PYTHON_VERSION) -t agilesyndrome/$(SYNDROME_PROJECT):$(PYTHON_VERSION) .

build: docker

clean:
	rm -rf built
	mkdir -p built

publish: clean
	docker push agilesyndrome/$(SYNDROME_PROJECT):$(PYTHON_VERSION)	
