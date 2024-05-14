FROM openjdk:11-jdk
RUN apt-get update && apt-get install -y --no-install-recommends \
 vim \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt

ARG VERSION=1.0.0

# RUN curl -s -L https://github.com/metafacture/metafacture-fix/releases/download/${VERSION}/metafix-runner-${VERSION}.zip --output metafix-runner-${VERSION}.zip \
#  && unzip -q metafix-runner-${VERSION}.zip

COPY releases/metafix-runner-${VERSION}.zip .

RUN unzip -q metafix-runner-${VERSION}.zip

RUN mv metafix-runner-${VERSION} metafix-runner

WORKDIR /opt/metafix-runner

# keep container running
ENTRYPOINT ["tail", "-f", "/dev/null"]
