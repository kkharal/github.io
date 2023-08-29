FROM ubuntu

# Update the package repository and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy your HTML file into the container
COPY index.html /var/www/html/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
