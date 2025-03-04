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
    && rm -rf /var/lib/apt/lists/*

ENV VERSION=0.23.0
ENV INSTALL_DIR="/voicevox_engine"

RUN wget "https://raw.githubusercontent.com/VOICEVOX/voicevox_engine/refs/tags/$VERSION/requirements.txt" -O /requirements.txt

RUN python3 -m pip install -r /requirements.txt

RUN /bin/bash -c 'set -ex && \
    ARCH=$(uname -m) && \
    case "$ARCH" in \
        x86_64) ARCH_NAME="x64" ;; \
        aarch64) ARCH_NAME="arm64" ;; \
        *) echo "$ARCH is unsupported architecture" && exit 1 ;; \
    esac && \
    wget "https://github.com/VOICEVOX/voicevox_engine/releases/download/$VERSION/voicevox_engine-linux-cpu-$ARCH_NAME-$VERSION.7z.001" -O /voicevox_engine.7z.001 \

WORKDIR $INSTALL_DIR

    && 7z x /voicevox_engine.7z.001 -o$INSTALL_DIR \
    && mv $INSTALL_DIR/linux-* $INSTALL_DIR/voicevox-engine'

RUN ln -s /root/.local/share/voicevox-engine /data

# Copy data for add-on
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

