#!/usr/bin/with-contenv bashio


CPU_THREADS=$(bashio::config 'cpu_threads')
MAX_THREADS=$(nproc --all)

if [ "$CPU_THREADS" -eq 0 ]; then
  :
elif [ "$CPU_THREADS" -lt 1 ] || [ "$CPU_THREADS" -gt "$MAX_THREADS" ]; then
  bashio::log.error "\"CPU Threads\" option is out of range. (Possible range: 0 - $MAX_THREADS). Start VOICEVOX Engine with the default number of CPU threads"
  CPU_THREADS=0
fi

if bashio::config.true 'use_max_cpu_threads'; then
  bashio::log.info "\"Use Max CPU Threads\" option is on. Ignore \"CPU Threads\" option and start VOICEVOX Engine with all ($MAX_THREADS) CPU threads"
  CPU_THREADS=$MAX_THREADS
else
  :
fi

CORS_POLICY=$(bashio::config 'cors_policy')

CMD_ARGS="--host 0.0.0.0 --port 50021 --cpu_num_threads ${CPU_THREADS} --cors_policy ${CORS_POLICY}"

ALLOW_ORIGIN=$(bashio::config 'allow_origin')

if [ -n "$ALLOW_ORIGIN" ]; then
  ALLOW_ORIGIN=$(echo "$ALLOW_ORIGIN" | tr '\n' ' ' | sed 's/ $//')

  CMD_ARGS="$CMD_ARGS --allow_origin ${ALLOW_ORIGIN}"
fi

bashio::log.info "Starting VOICEVOX Engine with the following options: ${CMD_ARGS}"

./run $CMD_ARGS
