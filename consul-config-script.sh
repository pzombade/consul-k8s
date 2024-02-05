consul acl bootstrap > /consul/tokens.txt
export CONSUL_HTTP_TOKEN="$(cat /consul/tokens.txt | grep 'SecretID:'  | awk '{print $2}')"
echo $CONSUL_HTTP_TOKEN
consul kv import @/consul/kv.json
