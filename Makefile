.PHONY: install test deploy


install:
	pip install httpx==0.13.*

test:
	python -c 'import httpx; print(httpx.get("https://example.org"))'

deploy:
	curl -v -X POST example.org -H "Content-Type: application/json" -d '{}'
