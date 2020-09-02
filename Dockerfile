FROM python:3.7.9-slim-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libc-dev \
    rabbitmq-server \
    && rm -rf /var/lib/apt/lists/*

ENV WORKING_DIR "/citizen"
WORKDIR ${WORKING_DIR}
COPY conf/ ${WORKING_DIR}/conf/
COPY keys/ ${WORKING_DIR}/keys/
COPY whl/ ${WORKING_DIR}/whl/
COPY *.sh ${WORKING_DIR}/

RUN ./whl/install.sh \
    && rm -rf /root/.cache/pip \
    && rm -rf ./whl

EXPOSE 9000
ENTRYPOINT ["/citizen/entry.sh"]
