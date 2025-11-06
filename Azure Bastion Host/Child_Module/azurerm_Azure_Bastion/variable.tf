variable "bation_host" {
  type = map(object({
    bation_name = string
    location    = string
    rg_name     = string
    pip_name    = string
    subnet_name = string
    vnet_name=string
  }))
}

# variable "publicip" {
#   type = map(string)  // or map(object(...)) if you require more fields
# }

# variable "subnet_name" {
#   type = map(string)
# }
