FROM python:3.7

WORKDIR /home

# dont write pyc files
# dont buffer to stdout/stderr
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /home/requirements.txt

# dependencies
RUN pip install --upgrade pip setuptools wheel \
    && pip install -r requirements.txt \
    && rm -rf /root/.cache/pip

# COPY ./ /usr/src/app

RUN pip install -U scikit-learn umap-learn hdbscan matplotlib japanize-matplotlib ipympl plotly
