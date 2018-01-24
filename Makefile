all:


lint:
	pipenv run pylint setup.py simplecmd tests


format:
	pipenv run yapf -ir setup.py simplecmd tests


publish:
	pipenv run ./setup.py sdist && \
	pipenv run twine upload dist/*


test:
	pipenv run python -m unittest discover -bv


.PHONY: all lint format test
