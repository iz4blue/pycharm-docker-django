# python3 docker image를 기본으로
FROM python:3
ENV PYTHONUNBUFFERED 1

# PyCharm 의 Run Configuration 에서 사용할 포트를 지정
EXPOSE 8000

# Container 에 Host 와 연결할 폴더를 설정
RUN mkdir /code
WORKDIR /code

ADD . /code/
ADD requirements.txt /code/
RUN pip install -r requirements.txt

# TODO: docker stop 하는데 너무 오래 걸림
# INFO: 최종 RUN 명령이 없는 것은 PyCharm 에서 설정해줘야 함
