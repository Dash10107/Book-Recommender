# app/Dockerfile

FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip3 install -r requirement.txt

EXPOSE 5000

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]