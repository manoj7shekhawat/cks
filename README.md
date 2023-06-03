# CSK

This repo if for preparing for [CSK](https://training.linuxfoundation.org/certification/certified-kubernetes-security-specialist/) exam

### INSTALL k8s-control
gcloud compute ssh k8s-control
sudo -i
bash <(curl -s https://raw.githubusercontent.com/killer-sh/cks-course-environment/master/cluster-setup/latest/install_master.sh)

### INSTALL k8s-worker
gcloud compute ssh k8s-worker
sudo -i
bash <(curl -s https://raw.githubusercontent.com/killer-sh/cks-course-environment/master/cluster-setup/latest/install_worker.sh)