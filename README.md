RUN: `./start.sh` </br>
This script is tailored for Openshift. </br>
It deploys : </br>
- deployment (example-app) </br>
- namespace (ns1) </br>
- serivce monitor </br>
- pod monitor </br>
- configMap (needed for openshift to allow user-specficied projects to be monitored by prometheus which is given out of thebox by Openshift). If a configMap already exists edit it so that it added data:config.yaml:enableUserWorkload:true 
</br>

```
$ ./start.sh
namespace/ns1 created
Now using project "ns1" on server "https://api.rhoms-4.11-121604.dev.openshiftappsvc.org:6443".
deployment.apps/example-app created
service/example-app created
servicemonitor.monitoring.coreos.com/example-app created
```

