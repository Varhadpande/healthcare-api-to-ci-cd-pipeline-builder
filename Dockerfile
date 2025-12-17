FROM python:3.13   
WORKDIR /app
COPY . /app
RUN pip install streamlit pandas requests
EXPOSE 3306
CMD ["streamlit","run","app.py","--server.port=3306","--server.address=0.0.0.0"]