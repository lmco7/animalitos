# Imagen base
FROM python:3.11

# Directorio de trabajo
WORKDIR /app

# Copiar archivos al contenedor
COPY . .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer puerto para Jupyter
EXPOSE 8888

# Comando por defecto
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
