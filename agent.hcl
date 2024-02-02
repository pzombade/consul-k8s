acl = {
  enabled = true
  default_policy = "deny"
  enable_token_persistence = true
}

# consul-config.hcl

# Define the Consul provider block
provider "consul" {
  address = "http://localhost:8500"  # Replace with the address of your Consul server
}

# Define the key-value pair
resource "consul_key_prefix" "example_kv" {
  path   = "example/path"  # Replace with your desired path
  values = {
    key1 = "value1"
    key2 = "value2"
    # Add more key-value pairs as needed
  }
}

