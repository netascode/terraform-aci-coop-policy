module "aci_coop_policy" {
  source  = "netascode/coop-policy/aci"
  version = ">= 0.0.1"

  coop_group_policy = "strict"
}
