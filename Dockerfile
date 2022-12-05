FROM python:3

# Install the required package
RUN pip install rich requests

# Copy the script to the container
COPY alice.py api.py /

# Set the working directory
WORKDIR /

# Run the script
# Add an environment variable to the script
ENV ChatGPT_JWT=your_jwt_token
CMD ["python", "alice.py"]