CRDS_DEST = charts/kubefox/crds
CDRS_SRC = ../kubefox/libs/core/api/crds

.PHONY: crds
crds:
	rm -rf $(CRDS_DEST)
	mkdir -p $(CRDS_DEST)
	cp $(CDRS_SRC)/k8s.kubefox.io_*.yaml $(CRDS_DEST)
