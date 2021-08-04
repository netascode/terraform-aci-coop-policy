module "aci_coop_policy" {
  source = "netascode/coop-policy/aci"

  coop_group_policy = "strict"
}
