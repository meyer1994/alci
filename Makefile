.PHONY: install test deploy


install:
	pip install requests

test:
	python -c 'import requests; print(requests.get("https://example.org"))'

deploy:
	curl -v -X POST example.org -H "Content-Type: application/json" -d '{}'
