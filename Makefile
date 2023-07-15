CHART_DIR = charts/kubefox

.PHONY: docs
docs:
	helm-docs --ignore-non-descriptions --chart-search-root $(CHART_DIR)
