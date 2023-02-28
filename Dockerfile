FROM grafana/grafana:9.4.1


COPY ./dashboards /etc/dashboards
COPY ./config/providers.yaml /etc/grafana/provisioning/dashboards/default.yaml