# Dockerfile for development.
FROM postgres:latest

ADD schema/schema.sql /docker-entrypoint-initdb.d/01_schema.sql
ADD schema/fake_data.sql /docker-entrypoint-initdb.d/02_fake_data.sql
