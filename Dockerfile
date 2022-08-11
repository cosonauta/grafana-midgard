FROM grafana/grafana:9.0.7


COPY ./dashboards /etc/dashboards
COPY ./config/providers.yaml /etc/grafana/provisioning/dashboards/default.yaml