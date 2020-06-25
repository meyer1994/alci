import requests


def run():
    response = requests.get('https://example.org')
    print(response)
