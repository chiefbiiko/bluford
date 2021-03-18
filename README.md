# zyzx

![](./gbedema21.PNG)

## todo

+ user data startup script
+ autoscalin 3az-single-node-setup with two hibernate backups and 1 live node
  + revive from one shared ebs snapshot
+ audit & tune with regard to high availability
  + RTO & RPO must be 1 minute
  + cron job that updates one ebs snapshot of the chain data volume every minute
+ review ingress
+ choose a better instance type & ami
