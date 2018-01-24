all:


lint:
	pipenv run pylint setup.py simplecmd tests


format:
	pipenv run yapf -ir setup.py simplecmd tests


test:
	pipenv run python -m unittest discover -bv


.PHONY: all lint format test
