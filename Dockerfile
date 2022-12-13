# pull official base image
FROM python:3.8-alpine
# copy the requirements file
COPY ./requirements.txt /app/requirements.txt
# switch to the working directory
WORKDIR /app
# install dependencies
RUN pip install -r requirements.txt
# copy the rest of the code
COPY . /app
# start in python
ENTRYPOINT [ "python" ]
# run the app
CMD [ "app.py" ]
