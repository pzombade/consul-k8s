consul acl bootstrap > tokens.txt
export CONSUL_HTTP_TOKEN="$(cat tokens.txt | grep 'SecretID:'  | awk '{print $2}')"
consul kv import @kv.json
