FROM grafana/grafana:9.1.4


COPY ./dashboards /etc/dashboards
COPY ./config/providers.yaml /etc/grafana/provisioning/dashboards/default.yaml