resource "aci_rest" "coopPol" {
  dn         = "uni/fabric/pol-default"
  class_name = "coopPol"
  content = {
    type = var.coop_group_policy
  }
}
