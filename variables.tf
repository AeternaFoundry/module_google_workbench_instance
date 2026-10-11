variable "workbench_instances" {
  description = <<EOT
Map of workbench_instances, attributes below
Required:
    - location
    - name
Optional:
    - deletion_policy
    - desired_state
    - disable_proxy_access
    - enable_deletion_protection
    - enable_managed_euc
    - enable_third_party_identity
    - instance_id
    - instance_owners
    - labels
    - project
    - gce_setup (block):
        - accelerator_configs (optional, block):
            - core_count (optional)
            - type (optional)
        - boot_disk (optional, block):
            - disk_encryption (optional)
            - disk_size_gb (optional)
            - disk_type (optional)
            - kms_key (optional)
        - confidential_instance_config (optional, block):
            - confidential_instance_type (optional)
        - container_image (optional, block):
            - repository (required)
            - tag (optional)
        - data_disks (optional, block):
            - disk_encryption (optional)
            - disk_size_gb (optional)
            - disk_type (optional)
            - kms_key (optional)
            - resource_policies (optional)
        - disable_public_ip (optional)
        - enable_ip_forwarding (optional)
        - machine_type (optional)
        - metadata (optional)
        - min_cpu_platform (optional)
        - network_interfaces (optional, block):
            - access_configs (optional, block):
                - external_ip (required)
            - network (optional)
            - nic_type (optional)
            - subnet (optional)
        - reservation_affinity (optional, block):
            - consume_reservation_type (optional)
            - key (optional)
            - values (optional)
        - service_accounts (optional, block):
            - email (optional)
        - shielded_instance_config (optional, block):
            - enable_integrity_monitoring (optional)
            - enable_secure_boot (optional)
            - enable_vtpm (optional)
        - tags (optional)
        - vm_image (optional, block):
            - family (optional)
            - name (optional)
            - project (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                    = string
    name                        = string
    deletion_policy             = optional(string)
    desired_state               = optional(string)
    disable_proxy_access        = optional(bool)
    enable_deletion_protection  = optional(bool)
    enable_managed_euc          = optional(bool)
    enable_third_party_identity = optional(bool)
    instance_id                 = optional(string)
    instance_owners             = optional(list(string))
    labels                      = optional(map(string))
    project                     = optional(string)
    gce_setup = optional(object({
      accelerator_configs = optional(list(object({
        core_count = optional(string)
        type       = optional(string)
      })))
      boot_disk = optional(object({
        disk_encryption = optional(string)
        disk_size_gb    = optional(string)
        disk_type       = optional(string)
        kms_key         = optional(string)
      }))
      confidential_instance_config = optional(object({
        confidential_instance_type = optional(string)
      }))
      container_image = optional(object({
        repository = string
        tag        = optional(string)
      }))
      data_disks = optional(object({
        disk_encryption   = optional(string)
        disk_size_gb      = optional(string)
        disk_type         = optional(string)
        kms_key           = optional(string)
        resource_policies = optional(list(string))
      }))
      disable_public_ip    = optional(bool)
      enable_ip_forwarding = optional(bool)
      machine_type         = optional(string)
      metadata             = optional(map(string))
      min_cpu_platform     = optional(string)
      network_interfaces = optional(list(object({
        access_configs = optional(list(object({
          external_ip = string
        })))
        network  = optional(string)
        nic_type = optional(string)
        subnet   = optional(string)
      })))
      reservation_affinity = optional(object({
        consume_reservation_type = optional(string)
        key                      = optional(string)
        values                   = optional(list(string))
      }))
      service_accounts = optional(list(object({
        email = optional(string)
      })))
      shielded_instance_config = optional(object({
        enable_integrity_monitoring = optional(bool)
        enable_secure_boot          = optional(bool)
        enable_vtpm                 = optional(bool)
      }))
      tags = optional(list(string))
      vm_image = optional(object({
        family  = optional(string)
        name    = optional(string)
        project = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

