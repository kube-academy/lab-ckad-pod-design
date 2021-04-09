Welcome.

This workshop is a port of Liptan Biswas' excellent [CKAD practice challenge](https://www.katacoda.com/liptanbiswas/courses/ckad-practice-challenges).

The idea is to provide access to environments in which to practice for the CKAD exam.

## About your workshop environment

Unlike other systems that provision kubernetes environments online, this system runs on a pre-existing kubernetes cluster shared with others who may be working through this or other workshops concurrently.

You sandbox is a specific kubernetes namespace in which you will perform the tasks outlined in this workshop.

The advantage of such an approach is the speed with which workshop environments can be provisioned and the lower overall resource requirements.

Be mindful however that you are not cluster administrator, and cannot run administrator commands including:

- `kubectl cluster-info`
- `kubectl get nodes`
- `kubectl create namespace x`

Another, perhaps more subtle constraint of this particular cluster is its default pod security policy, which does not allow running containers as the root user.  This workshop use [bitnami container images](https://bitnami.com/stacks/containers) that were [designed with this in mind](https://engineering.bitnami.com/articles/why-non-root-containers-are-important-for-security.html).

If you come across any issues including misspellings, instructions which do not work as advertised, please let us know, by opening an issue against [this workshop's source repository](https://github.com/eitansuez/lab-ckad-practice/issues).

Enjoy!
