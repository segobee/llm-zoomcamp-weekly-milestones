# Use the official Ollama image as a base
FROM ollama/ollama

# Create the .ollama directory in the container
RUN mkdir -p /root/.ollama

# Copy the local ollama_files directory to the container
COPY ollama_files /root/.ollama

# Copy the entry script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Set the entry script as executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the working directory
WORKDIR /root/.ollama

# Expose the port
EXPOSE 11434

# Command to run the entry script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
