# CKAD Practice Educates Workshop

This repository is an [Educates](https://docs.edukates.io/) workshop.

It is a port of _the fifth scenario (pod design)_ from Liptan Biswas' excellent [CKAD practice challenge](https://www.katacoda.com/liptanbiswas/courses/ckad-practice-challenges).

## Status

In development.

## Deployment Instructions

Assuming you already have a k8s cluster with the educates operator deployed..

1. Clone this repo
1. Navigate to its base directory
1. Deploy the workshop:

    ```bash
    kubectl apply -f resources/workshop.yaml
    ```

1. Deploy a sample training portal:

    ```bash
    kubectl apply -f resources/training-portal.yaml
    ```

1. Get the URL for the training portal:

    ```bash
    kubectl get trainingportal
    ```

The training portal is configured to allow anonymous access. For your own workshop content you should consider removing anonymous access.
