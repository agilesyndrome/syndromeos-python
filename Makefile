docker:
	docker build --build-arg pythonVersion=$(PYTHON_VERSION) -t docker.pkg.github.com/agilesyndrome/syndromeos-python/python:$(PTYHON_VERSION) .

build: docker

clean:
	rm -rf built
	mkdir -p built

publish: clean
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-python/python:$(PYTHON_VERSION)
