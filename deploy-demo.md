k describe deployment nginx-deployment -n demo-purpose
k edit deployment nginx-deployment -n demo-purpose
k get pod -n demo-purpose
k rollout status deployment/nginx-deployment -n demo-purpose
k get pod -n demo-purpose
k edit deployment nginx-deployment -n demo-purpose --record=true
k rollout status deployment/nginx-deployment -n demo-purpose
k get pod -n demo-purpose
k rollout history deployment.v1.apps/nginx-deployment -n demo-purpose
k rollout history deployment.v1.apps/nginx-deployment -n demo-purpose --revision=2
k get pod -n demo-purpose
k rollout undo deployment.v1.apps/nginx-deployment -n demo-purpose --to-revision=2
k get pod -n demo-purpose