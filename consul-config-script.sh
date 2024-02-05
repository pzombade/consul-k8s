consul acl bootstrap -token="85d02b81-7207-82ec-3c3f-40a1e7c8c673" > /consul/tokens.txt
export CONSUL_HTTP_TOKEN="85d02b81-7207-82ec-3c3f-40a1e7c8c673"
echo $CONSUL_HTTP_TOKEN
consul kv import @/consul/kv.json
