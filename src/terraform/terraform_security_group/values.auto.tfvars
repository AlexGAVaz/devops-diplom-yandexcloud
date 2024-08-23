cloud_id  = "b1gcla1jpo0ir7kgd3d8"
folder_id = "b1gtn0rdlt5hmqmngokb"
labels = {
  created_by  = "terraform"
  environment = "diplom"
}

self    = true
nlb_hc  = false
sg_name = "diplom-security-group"
ingress_rules_with_cidrs = [
  {
    protocol       = "ANY"
    description    = "Allow all incoming traffic"
    v4_cidr_blocks = ["0.0.0.0/0"]
  },
]
ingress_rules_with_sg_ids = []
egress_rules = [
  {
    protocol       = "ANY"
    description    = "Allow all outgoing traffic"
    v4_cidr_blocks = ["0.0.0.0/0"]
  },
]
