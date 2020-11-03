# k8s-addon-bootstrap

Kubernetes cluster add-on bootstrap utility that allows you to automatically apply add-ons to a newly-built Kuberntes cluster stored in Git. Any system capable of applying user-defined Kubernetes manifests to a cluster build process should work with this utility.

## Usage Steps

1. Use the `manifest.yaml` file found in this repo as the template which is automatically applied by your cluster build tool.
1. base64 encode the Git repo URL which contains the cluster add-on manifests you wish to apply.
1. Substitute this value in the Secret.
1. If required or desired, replace the image and tag with your own from your private registry.
1. Build a Kubernetes cluster and verify the manifests stored in Git were successfully applied.
