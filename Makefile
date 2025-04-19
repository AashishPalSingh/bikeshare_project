install:
	pip install --upgrade pip &&\
		pip install -r requirements/requirements.txt &&\
		pip install -r requirements/test_requirements.txt
format:
	black app/*.py
lint:
	pylint --disable=R,C app/*.py
test:
	python -m pytest tests/*.py
all: install lint test format