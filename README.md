# Nimble Kubernetes applications
### How to expose new service
1. Edit the ingress-prod-rules.yaml
2. Add the new service as "backend"
  * To add new service named "new-service" add the following:
  ```
  ...
        - backend:
          serviceName: new-service
          servicePort: 8080
        path: /new-service/
   ...
  
  ```
  
  * You ingress should be as following:
  
```
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  annotations:
    ingress.bluemix.net/redirect-to-https: "true"
  name: rules-prod
spec:
  tls:
  - hosts:
    - nimble.uk-south.containers.mybluemix.net
    secretName: nimble-cert
  rules:
  - host: nimble.uk-south.containers.mybluemix.net
    http:
      paths:
      - backend:
          serviceName: marmotta
          servicePort: 8080
        path: /marmotta/
        - backend:
          serviceName: new-service
          servicePort: 8080
        path: /new-service/
```
