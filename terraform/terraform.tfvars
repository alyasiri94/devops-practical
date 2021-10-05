#======================================================================================
# General configuration
#======================================================================================

# Provider's URI #
libvirt_provider_uri = "qemu:///system"

# Resource pool name #
libvirt_resource_pool_name = "k8s-resource-pool"

# Location where resource pool will be initialized (Path must contain "/" at the end) #
libvirt_resource_pool_location = "/var/lib/libvirt/pools/"


#======================================================================================
# Global VM configuration
#======================================================================================

# Username used to SSH to the VM #
vm_user = "k8s"

# Private SSH key location (for VMs) (example: ~/.ssh/id_rsa) #
vm_ssh_private_key = "~/.ssh/id_rsa"

# Add VMs to SSH known hosts #
vm_ssh_known_hosts = true

# Linux distribution that will be used on VMs (ubuntu, debian, centos, "") #
vm_distro = ""

# Source of linux image. It can be path to an image on host's filesystem or an URL #
vm_image_source = ""

# The prefix added to names of VMs #
vm_name_prefix = "k8s"

# Network interface used by VMs to connect to the network #
vm_network_interface = "ens3"


#======================================================================================
# Network configuration
#======================================================================================

# Network name #
network_name = "k8s-network"

# Network mode (nat, route) #
network_mode = "nat"

# Network (virtual) bridge #
network_bridge = "virbr1"

# Network CIDR (example: 192.168.113.0/24) #
network_cidr = ""


#======================================================================================
# HAProxy load balancer VMs parameters
#======================================================================================

# The default number of vCPU allocated to the load balancer VM #
lb_default_cpu = 1

# The default amount of RAM allocated to the load balancer VM (in Megabytes - MB) #
lb_default_ram = 2048

# The default amount of disk allocated to the load balancer VM (in Bytes - B) #
lb_default_storage = 16106127360

# HAProxy load balancer nodes configuration #
lb_nodes = [
  {
    id  = 1
    ip  = ""
    mac = ""
  },
  {
    id  = 2
    ip  = ""
    mac = ""
  }
]

# Floating IP address. #
# Note: Floating IP only applies if at least one load balancer is defined, #
# otherwise IP of the first master node will be used. #
lb_vip = ""


#======================================================================================
# Master node VMs parameters
#======================================================================================

# The default number of vCPU allocated to the master VM #
master_default_cpu = 2

# The default amount of RAM allocated to the master VM (in Megabytes - MB) #
master_default_ram = 2048

# The default amount of disk allocated to the master VM (in Bytes - B) #
master_default_storage = 16106127360

# Master nodes configuration #
# Note that number of masters cannot be divisible by 2. #
master_nodes = [
  {
    id  = 1
    ip  = ""
    mac = ""
  },
  {
    id  = 2
    ip  = ""
    mac = ""
  },
  {
    id  = 3
    ip  = ""
    mac = ""
  }
]


#======================================================================================
# Worker node VMs parameters
#======================================================================================

# The default number of vCPU allocated to the worker VM #
worker_default_cpu = 4

# The default amount of RAM allocated to the worker VM (in Megabytes - MB) #
worker_default_ram = 8192

# The default amount of disk allocated to the worker VM (in Bytes - B) #
worker_default_storage = 32212254720

# Sets worker node's role label #
# Note: Leave empty ("") to not set the label. #
worker_node_label = "node"

# Worker nodes configuration #
worker_nodes = [
  {
    id  = 1
    ip  = ""
    mac = ""
  },
  {
    # Example of optional MAC address
    id  = 2
    ip  = ""
    mac = null
  },
  {
    # Example of optional IP and MAC addresses
    id  = 3
    ip  = null
    mac = null
  }
]


#======================================================================================
# General Kubernetes configuration
#======================================================================================

# The Git repository to clone Kubespray from #
k8s_kubespray_url = "https://github.com/kubernetes-sigs/kubespray.git"

# The version of Kubespray that will be used to deploy Kubernetes #
k8s_kubespray_version = "v2.16.0"

# The Kubernetes version that will be deployed #
k8s_version = "v1.20.7"

# The overlay network plugin used by the Kubernetes cluster (flannel/weave/calico/cilium/canal/kube-router) #
k8s_network_plugin = "calico"

# The DNS service used by Kubernetes cluster (coredns/kubedns)#
k8s_dns_mode = "coredns"

# Copies config file to ~/.kube directory #
# Note: Kubeconfig will be always available in config/admin.conf after installation #
k8s_copy_kubeconfig = false


#======================================================================================
# Kubespray addons
#======================================================================================

#=========================
# Custom addons
#=========================

# IMPORTANT: If custom addons are enabled, variables from other sections below
# will be ignored and addons from file path provided will be applied instead.

# Use custom addons.yml #
kubespray_custom_addons_enabled = false

# Path to custom addons.yml #
kubespray_custom_addons_path = "defaults/addons.yml"

#=========================
# General
#=========================

# Install Kubernetes dashboard #
k8s_dashboard_enabled = false

# Creates Kubernets dashboard RBAC token (dashboard needs to be enabled) #
k8s_dashboard_rbac_enabled = false
k8s_dashboard_rbac_user    = "admin"

# Install helm #
helm_enabled = false

#=========================
# Local path provisioner
#=========================

# Note: This is dynamic storage provisioner #

# Install Rancher's local path provisioner #
local_path_provisioner_enabled = false

# Version #
local_path_provisioner_version = "v0.0.19"

# Namespace in which provisioner will be installed #
local_path_provisioner_namespace = "local-path-provisioner"

# Storage class #
local_path_provisioner_storage_class = "local-storage"

# Reclaim policy (Delete/Retain) #
local_path_provisioner_reclaim_policy = "Delete"

# Claim root #
local_path_provisioner_claim_root = "/opt/local-path-provisioner/"

#=========================
# MetalLB
#=========================

# Install MetalLB #
metallb_enabled = false

# MetalLB version #
metallb_version = "v0.9.5"

# Kubernetes limits (1000m = 1 vCore) #
metallb_cpu_limit = "500m"
metallb_mem_limit = "500Mi"
metallb_port      = 7472

# MetalLB protocol (layer2/bgp) #
metallb_protocol = "layer2"

# IP range for services of type LoadBalancer #
metallb_ip_range = ""

# MetalLB peers #
# Note: This variable will be applied only in 'bgp' mode #
metallb_peers = [
  {
    peer_ip  = ""
    peer_asn = 65000
    my_asn   = 65000
  }
]
