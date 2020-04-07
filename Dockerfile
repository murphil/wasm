FROM nnurphy/deb

ENV wasmtime_version=v0.15.0
ARG wasmtime_url=https://github.com/bytecodealliance/wasmtime/releases/download/${wasmtime_version}/wasmtime-${wasmtime_version}-x86_64-linux.tar.xz
RUN set -eux \
  ; wget -O- ${wasmtime_url} | tar Jxf - --strip-components=1 -C /usr/local/bin \
        wasmtime-${wasmtime_version}-x86_64-linux/wasm2obj \
        wasmtime-${wasmtime_version}-x86_64-linux/wasmtime

