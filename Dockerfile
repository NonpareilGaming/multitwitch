FROM python:3-alpine
WORKDIR /service
COPY requirements.txt .
# RUN pip3 install -r requirements.txt
COPY . ./
EXPOSE 5000
RUN python3 setup.py develop
ENTRYPOINT ["python3"]
CMD ["runapp.py"]
