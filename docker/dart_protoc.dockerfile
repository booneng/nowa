FROM google/dart

ENV PROTOC_VERSION "3.11.4"
ENV PATH="/tmp/protobuf/protoc_plugin/bin:$PATH"

WORKDIR /tmp

RUN apt-get update -yqq && \
  apt-get install -yqq curl git unzip

# Install protoc
RUN curl -sfLo protoc.zip "https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip" && \
  mkdir protoc && \
  unzip -q -d protoc protoc.zip && \
  cp protoc/bin/protoc /usr/local/bin/protoc

# Install gen-dart
RUN git clone https://github.com/dart-lang/protobuf && \
    cd protobuf/protoc_plugin && pub install
    
ENTRYPOINT ["/usr/local/bin/protoc"]
