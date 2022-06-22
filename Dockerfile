FROM grafana/grafana:9.0.1


COPY ./dashboards /etc/dashboards
COPY ./config/providers.yaml /etc/grafana/provisioning/dashboards/default.yaml