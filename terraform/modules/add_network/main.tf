variable "vsphere_datacenter" {
  type = string
}

variable "esxi_hostname" {
  type = string
}

variable "virtual_switch" {
  type = string
}

data "vsphere_datacenter" "default" {
  name  = var.vsphere_datacenter
}

data "vsphere_host" "default" {
  name          = var.esxi_hostname
  datacenter_id = data.vsphere_datacenter.default.id
}

resource "vsphere_host_port_group" "portgroup" {
    name            = "Atlantis-Test1"
    host_system_id  = data.vsphere_host.default.id
    virtual_switch_name = var.virtual_switch
}