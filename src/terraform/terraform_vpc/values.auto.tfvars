cloud_id  = "b1gcla1jpo0ir7kgd3d8"
folder_id = "b1gtn0rdlt5hmqmngokb"
labels = {
  created_by  = "terraform"
  environment = "diplom"
}

create_vpc          = true
create_sg           = true
network_name        = "diplom-vpc"
network_description = "Infrastructure diplom network"
create_nat_gw       = true
public_subnets = [
  {
    v4_cidr_blocks = ["10.0.1.0/24"]
    zone           = "ru-central1-a"
    name           = "" # оставляем пустым, чтобы использовалось автоимя
  },
  {
    v4_cidr_blocks = ["10.0.2.0/24"]
    zone           = "ru-central1-b"
    name           = "" # оставляем пустым, чтобы использовалось автоимя
  },
  {
    v4_cidr_blocks = ["10.0.3.0/24"]
    zone           = "ru-central1-d"
    name           = "" # оставляем пустым, чтобы использовалось автоимя
  }
]
private_subnets = [
  {
    v4_cidr_blocks = ["10.0.4.0/24"]
    zone           = "ru-central1-a"
    name           = "" # оставляем пустым, чтобы использовалось автоимя
  },
  {
    v4_cidr_blocks = ["10.0.5.0/24"]
    zone           = "ru-central1-b"
    name           = "" # оставляем пустым, чтобы использовалось автоимя
  },
  {
    v4_cidr_blocks = ["10.0.6.0/24"]
    zone           = "ru-central1-d"
    name           = "" # оставляем пустым, чтобы использовалось автоимя
  }
]




