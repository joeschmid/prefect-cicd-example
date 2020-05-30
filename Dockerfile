FROM prefecthq/prefect:0.11.4-python3.7

# Install system packages.
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create the directory containing the code.
RUN mkdir -p /code /requirements
ENV TARGET_DIR /code
WORKDIR $TARGET_DIR

# Copy the requirements files.
COPY requirements.txt $TARGET_DIR/

# Install the pip packages.
RUN pip install -q -r $TARGET_DIR/requirements.txt

COPY prefect_cicd_example $TARGET_DIR/prefect_cicd_example/
ADD setup.py setup.cfg README.rst $TARGET_DIR/

COPY .git $TARGET_DIR/.git/

RUN pip install -e . 
# && rm -rf $TARGET_DIR/.git/
