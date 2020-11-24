terraform {
	required_providers {
		vsphere = {
		source 	= "vsphere"
		version = "1.24.0"
		}
	}
}

provider "vsphere" {
	vsphere_server        = var.vsphere_hostname
	user                  = var.vsphere_username
	password              = var.vsphere_password
	allow_unverified_ssl  = true
}

variable "vsphere_hostname" {
	type = string
}

variable "vsphere_username" {
	type = string
}

variable "vsphere_password" {
	type = string
}

variable "vsphere_datacenter" {
	type = string
}

variable "esxi_hostname" {
	type = string
}

variable "virtual_switch" {
    type = string
}

module "add_network" {
    source = "./modules/add_network"
    vsphere_datacenter = var.vsphere_datacenter
    esxi_hostname = var.esxi_hostname
    virtual_switch = var.virtual_switch
}