terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  coop_group_policy = "strict"
}

data "aci_rest" "coopPol" {
  dn = "uni/fabric/pol-default"

  depends_on = [module.main]
}

resource "test_assertions" "coopPol" {
  component = "coopPol"

  equal "type" {
    description = "type"
    got         = data.aci_rest.coopPol.content.type
    want        = "strict"
  }
}
