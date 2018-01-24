PKG_NAME=pkgxyz


all:


lint:
	pipenv run pylint setup.py ${PKG_NAME} tests


format:
	pipenv run yapf -ir setup.py ${PKG_NAME} tests


.PHONY: all lint format test
