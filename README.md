
Login into https://killercoda.com/killer-shell-ckad/scenario/playground and create a k8s playground. <br/>
Start the new playground<br/><br/>

Execute below command to start the Consul deployment. It will also spin a consul service on nodeport 30850<br/>
<code>k create -f https://raw.githubusercontent.com/pzombade/consul-k8s/main/consul-deploy.yml</code><br/><br/>

In the playground, click the hamburger icon in the top right. Click on the "Traffic/Ports".<br/>
Specify the Custom port as 30850. Click access button next to it. It will open a new tab and Consul UI should be visible in it.

<br/><br/><br/>
<code>
mkdir configs
cd configs/
wget https://raw.githubusercontent.com/pzombade/consul-k8s/main/consul-pod.yml
wget https://raw.githubusercontent.com/pzombade/consul-k8s/main/consul-pv.yml
wget https://raw.githubusercontent.com/pzombade/consul-k8s/main/consul-pvc.yml
mkdir /mydata
wget https://raw.githubusercontent.com/pzombade/consul-k8s/main/agent.hcl
mv agent.hcl /mydata/
k create -f .
sleep 15
k exec -it consul -- consul acl bootstrap > tokens.txt
cat tokens.txt

consul kv import @kv.json
export CONSUL_HTTP_TOKEN=61ae9200-3a6e-700d-a429-bf69b2656d80
consul kv import @kv.json

</code>
