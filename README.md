
Login into https://killercoda.com/killer-shell-ckad/scenario/playground and create a k8s playground
Start the new playground

Execute below command to start the Consul deployment. It will also spin a consul service on nodeport 30850
k create -f https://raw.githubusercontent.com/pzombade/consul-k8s/main/consul-deploy.yml

In the playground, click the hamburger icon in the top right. Click on the "Traffic/Ports".
Specify the Custom port as 30850. Click access button next to it. It will open a new tab and Consul UI should be visible in it.
