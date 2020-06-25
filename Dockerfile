ARG version

FROM python:$version-alpine

COPY . /alci
WORKDIR /alci

RUN pip install -r requirements.txt

RUN python main.py
RUN flake8 --statistics *.py
RUN coverage run --source=main -m unittest -vb test.py
RUN coverage report -m

CMD [ "bash" ]
