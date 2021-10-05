---
##
# Kubesprays's source file (v2.16.0):
# https://github.com/kubernetes-sigs/kubespray/blob/v2.16.0/inventory/sample/group_vars/etcd.yml
##

## Etcd auto compaction retention for mvcc key value store in hour
# etcd_compaction_retention: 0

## Set level of detail for etcd exported metrics, specify 'extensive' to include histogram metrics.
# etcd_metrics: basic

## Etcd is restricted by default to 512M on systems under 4GB RAM, 512MB is not enough for much more than testing.
## Set this if your etcd nodes have less than 4GB but you want more RAM for etcd. Set to 0 for unrestricted RAM.
# etcd_memory_limit: "512M"

## Etcd has a default of 2G for its space quota. If you put a value in etcd_memory_limit which is less than
## etcd_quota_backend_bytes, you may encounter out of memory terminations of the etcd cluster. Please check
## etcd documentation for more information.
# etcd_quota_backend_bytes: "2147483648"

### ETCD: disable peer client cert authentication.
# This affects ETCD_PEER_CLIENT_CERT_AUTH variable
# etcd_peer_client_auth: true

## Settings for etcd deployment type
etcd_deployment_type: host