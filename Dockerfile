FROM pandoc/latex:2.14.0.3
# TODO: consider update above version

# Install necessary dependencies
RUN apk add --no-cache bash gawk sed grep bc coreutils

# Copy the entrypoint script into the Docker image
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint script as executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint for the Docker image
ENTRYPOINT ["/entrypoint.sh"]
