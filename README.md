
Login into https://killercoda.com/killer-shell-ckad/scenario/playground and create a k8s playground. <br/>
Start the new playground<br/><br/>

Execute below command to start the Consul deployment. It will also spin a consul service on nodeport 30850<br/>
<code>k create -f https://raw.githubusercontent.com/pzombade/consul-k8s/main/consul-deploy.yml</code><br/><br/>

In the playground, click the hamburger icon in the top right. Click on the "Traffic/Ports".<br/>
Specify the Custom port as 30850. Click access button next to it. It will open a new tab and Consul UI should be visible in it.

<br/><br/><br/>

<hr/>
```

mkdir configs
cd configs/
wget https://raw.githubusercontent.com/pzombade/consul-k8s/config-create-kv/consul-pod.yml
wget https://raw.githubusercontent.com/pzombade/consul-k8s/config-create-kv/consul-pv.yml
wget https://raw.githubusercontent.com/pzombade/consul-k8s/config-create-kv/consul-pvc.yml
wget https://github.com/pzombade/consul-k8s/raw/config-create-kv/consul-config-script.sh


wget https://raw.githubusercontent.com/pzombade/consul-k8s/main/agent.hcl
mkdir /consul
mkdir /consul/config
mv agent.hcl /consul/config

chmod 755 consul-config-script.sh
mv consul-config-script.sh /consul/

wget https://raw.githubusercontent.com/pzombade/consul-k8s/config-create-kv/kv.json
mv kv.json /consul/

k create -f .
sleep 15
k exec consul -- sh -c /consul/consul-config-script.sh
```

<hr/>
Clean UP:

<code>
  k delete --force -f ./configs/
  rm -rf /mydata/
</code>
