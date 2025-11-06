# Imagen base ligera de Nginx
FROM nginx:alpine

# Elimina la configuración por defecto
RUN rm /etc/nginx/conf.d/default.conf

# Copia tu configuración personalizada
COPY nginx.conf /etc/nginx/conf.d/

# Expone el puerto que Cloud Run usa
ENV PORT 8080
EXPOSE 8080

# Inicia Nginx
CMD ["nginx", "-g", "daemon off;"]
