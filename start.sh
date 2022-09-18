#!/bin/bash 
oc apply -f example-app-namespace.yaml 
oc project ns1
oc apply -f example-app-deployment.yaml 
oc apply -f example-app-service.yaml 
oc apply -f example-app-service-monitor.yaml
oc apply -f example-app-pod-monitor.yaml
oc apply -f example-app-configmap.yaml
