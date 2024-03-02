install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt

lint:
	pylint --disable=R,C main.py

format:
	black *.py

test:
	python3 -m pytest -vv --cov=main test_main.py