FROM jupyter/notebook:latest

# Install the dependencies
RUN pip install ipythonblocks

# Add the files to the image
ADD . /data

# Set the current working directory
WORKDIR /data

# Expose the notebook port
EXPOSE 8888

# Fire it up
CMD jupyter notebook --ip=0.0.0.0 --no-browser
