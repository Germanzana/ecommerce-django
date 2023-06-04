# Obtener imagen de base
FROM python:3.10.4-slim-bullseye

# Establecer variables de entorno
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Establecer directorio de trabajo
WORKDIR /code

# Instalar dependencias 
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copiamos proyecto
COPY . .