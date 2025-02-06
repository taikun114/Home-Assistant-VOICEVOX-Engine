ARG BUILD_FROM
FROM $BUILD_FROM

ENV PIP_BREAK_SYSTEM_PACKAGES=1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
    && apt-get --no-install-recommends install -y \
    python3.11 \
    python3-dev \
    python3-pip \
    p7zip-full \
    wget \
    git \
    build-essential \
    libssl-dev \
    libffi-dev \
    cmake \
    && rm -rf /var/lib/apt/lists/*

ENV VERSION=0.22.2
ENV INSTALL_DIR="/voicevox_engine"

RUN wget "https://raw.githubusercontent.com/VOICEVOX/voicevox_engine/refs/tags/$VERSION/requirements.txt" -O /requirements.txt

RUN python3 -m pip install -r /requirements.txt

RUN wget "https://github.com/VOICEVOX/voicevox_engine/releases/download/$VERSION/voicevox_engine-linux-cpu-$VERSION.7z.001" -O /voicevox_engine.7z.001 \
    && 7z x /voicevox_engine.7z.001 -o$INSTALL_DIR

RUN ln -s /root/.local/share /data

# Copy data for add-on
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

