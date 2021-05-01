# Read from Ubuntu Base Image
FROM python:3.7.10
RUN mkdir -p /service
# Copy over all the files of interest
ADD app.py /service/app.py
ADD config.py /service/config.py
ADD manage.py /service/manage.py
ADD api /service/api
ADD client/build /service/client/build
ADD requirements.txt /service/requirements.txt
WORKDIR /service/
RUN pip install -r requirements.txt
CMD python -u app.py $APP_SETTINGS $DATABASE_URL