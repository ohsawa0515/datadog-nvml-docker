FROM datadog/agent:latest

RUN mkdir -p /etc/datadog-agent/checks.d/ && \
    mkdir -p /etc/datadog-agent/conf.d/nvml.d && \
    /opt/datadog-agent/embedded/bin/pip install nvidia-ml-py3==7.352.0

ADD nvml.py /etc/datadog-agent/checks.d/nvml.py
ADD nvml.yaml /etc/datadog-agent/conf.d/nvml.d/nvml.yaml

RUN chown -R dd-agent /etc/datadog-agent/checks.d/nvml.py && \
    chown -R dd-agent /etc/datadog-agent/conf.d/nvml.d/nvml.yaml
