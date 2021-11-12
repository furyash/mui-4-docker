FROM python:3.9-alpine3.14
RUN apk add --no-cache gcc musl-dev postgresql-dev
RUN addgroup api && adduser -DG api api
USER api
WORKDIR /home/api
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python", "test.py"]