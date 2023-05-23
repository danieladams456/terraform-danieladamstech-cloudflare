variable "zone_id" {}
variable "name" {}

locals {
  type_value = {
    A    = "192.0.2.1"
    AAAA = "100::"
  }
}
