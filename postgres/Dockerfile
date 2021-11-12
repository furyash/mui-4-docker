FROM postgres:alpine3.14
WORKDIR /home/postgres
RUN chown -R postgres:postgres /home/postgres
USER postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=mui-4
ENV POSTGRES_USER=postgres
COPY mui-4.sql /docker-entrypoint-initdb.d/
EXPOSE 5432

