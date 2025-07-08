# Use lightweight Alpine image
FROM alpine:3.19

# Install bash (optional)
RUN apk add --no-cache bash

# Set working directory
WORKDIR /app

# Create a simple script
RUN echo 'echo "Hello, Docker!"' > hello.sh && chmod +x hello.sh

# Default command
CMD ["./hello.sh"]
