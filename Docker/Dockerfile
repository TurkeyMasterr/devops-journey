# Start from the alpine image that is smaller but no fancy tools
FROM alpine:3.21

# Use the /usr/src/app is our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the hello.sh file from this directory to /usr/src/app/ creating /usr/src/app/hello.sh
COPY hello.sh .

# If chmod chmod is skipped,uncomment this command to add execution permissions during the build.
# RUN chmod +x hello.sh

# Execute a command with `/bin/sh -c` prefix.
RUN touch additional.txt

# When running docker run the command will be ./hello.sh
CMD ["./hello.sh"]

