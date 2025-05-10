module "null-resources" {
  source = "./null-res-module"
}

module "resouce-count" {
  source = "./resource-count"
  input = module.null-resources
}