CHART_DIR = charts/kubefox

.PHONY: docs
docs:
	helm-docs --chart-search-root $(CHART_DIR)
