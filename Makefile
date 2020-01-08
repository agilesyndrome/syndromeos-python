ci:
	docker build --build-arg pythonBuildDep=$(PYTHON_BUILDDEP) --build-arg pythonVersion=$(PYTHON_VERSION) -t docker.pkg.github.com/agilesyndrome/syndromeos-python/python:$(PYTHON_VERSION) .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-python/python:$(PYTHON_VERSION)
