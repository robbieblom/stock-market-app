VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip
include env.mk

run: $(VENV)/bin/activate
	$(PYTHON) tests/main.py

venv/bin/activate: requirements.txt
	rm -rf venv/
	python3 -m venv venv
	$(PIP) install -r requirements.txt
	$(PIP) install -e .

setup: requirements.txt
	rm -rf venv/
	python3 -m venv venv
	$(PIP) install -r requirements.txt
	$(PIP) install -e .

clean:
	rm -rf src/stock_market_bytetheory/__pycache__
	rm -rf src/stock_market_bytetheory.egg-info/
	rm -rf dist/
	rm -rf $(VENV)

build:
	$(PIP) uninstall stock_market_bytetheory -y
	$(PYTHON) -m build
	$(PIP) freeze > requirements.txt
	$(PIP) install -e .

deploy:
ifeq ($(STAGE), production)
	$(PYTHON) -m twine upload -u __token__ -p $(PRODUCTION_PYPI_TOKEN) dist/*	
else
	$(PYTHON) -m twine upload --repository testpypi -u __token__ -p $(DEVELOPMENT_PYPI_TOKEN) dist/*
endif
