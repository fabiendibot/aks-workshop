kubectl create secret docker-registry private-registry \
    --namespace demo \
    --docker-server=demoalstom.azurecr.io \
    --docker-username=demoalstom \
    --docker-password=dmtgHPzocomLF/lnog8FFwXP0scJfhNb \
    --docker-email=<your-email>

az feature register --namespace "Microsoft.ContainerService" --name "AKS-AzureKeyVaultSecretsProvider"
az extension update --name aks-preview
az aks enable-addons --addons azure-keyvault-secrets-provider --name alstomws1 --resource-group WS-AKS

kubectl exec busybox-secrets-store-inline -- ls /mnt/secrets-store/
kubectl exec busybox-secrets-store-inline -- cat /mnt/secrets-store/password
