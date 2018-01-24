PKG_NAME=pkgxyz


all:


lint:
	pipenv run pylint ${PKG_NAME} tests


format:
	pipenv run yapf -ir ${PKG_NAME} tests


.PHONY: all lint format test
