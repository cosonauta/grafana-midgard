# Grafana

Grafana for midgard cluster with provisioned dashboards.

## Dashboards

The dashboards will be provisioned from the [`dashboards`](dashboards/) directory.

Use Grafana exported JSON to provision a dashboard.

The dashboards can have 1 level depth, e.g:

- ./dashboards/something/my-app.json
- ./dashboards/other/my-other-app.json

> If the dashboard is set in the root folder it will be available in general.
