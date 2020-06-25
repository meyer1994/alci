import requests


def run():
    response = requests.get('https://example.org')
    print(response)


if __name__ == '__main__':
    run()
