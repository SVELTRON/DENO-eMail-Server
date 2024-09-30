# Use the official Deno image
FROM hayd/deno:alpine

# Set the working directory
WORKDIR /app

# Copy the files from your local project to the container
COPY . .

# Cache the dependencies (this helps with build times)
RUN deno cache main.ts

# Run the application
CMD ["deno", "run", "--allow-net", "--allow-read", "--allow-write", "main.ts"]
