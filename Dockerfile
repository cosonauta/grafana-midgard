FROM grafana/grafana:8.3.6


COPY ./dashboards /etc/dashboards
COPY ./config/providers.yaml /etc/grafana/provisioning/dashboards/default.yaml