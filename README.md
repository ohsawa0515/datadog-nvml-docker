# datadog-nvml-docker

```console
docker run -d --gpus=all \
              -v /var/run/docker.sock:/var/run/docker.sock:ro \
              -v /proc/:/host/proc/:ro \
              -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
              -v /opt/datadog-agent-conf.d:/conf.d:ro \
              -v /opt/datadog-agent-checks.d:/checks.d:ro \
              -e DD_API_KEY=${DD_API_KEY} \
              -e DD_SITE=datadoghq.com \
              ohsawa0515/datadog-nvml:latest
```
