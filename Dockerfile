# Usage
# docker build -t mosazhaw/flask-playground .
# docker run -p 9001:5000 -d mosazhaw/flask-playground

FROM python:3.8

# Copy Files
WORKDIR /usr/src/app
COPY . .

# Install
RUN pip install -r requirements.txt

# Docker Run Command
EXPOSE 5000
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]