apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: <CHANGEME>
  namespace: <CHANGEME>
spec:
  defaultBackend:
    service:
      name: <CHANGEME>
      port:
        number: <CHANGEME>
  ingressClassName: tailscale
  tls:
    - hosts:
        - <HOSTNAME-HERE>
