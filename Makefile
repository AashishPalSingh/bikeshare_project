install:
	pip install --upgrade pip &&\
		pip install -r requiremens\requirements.txt &&\
		pip install -r requiremens\test_requirements.txt
format:
	black app/*.py
lint:
	pylint --disable=R,C app/*.py
test:
	python -m pytest tests/*.py
all: install lint test format