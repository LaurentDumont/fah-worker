## What is this?

Small Docker file to run the FAH client inside a Docker container. This allows the FAH client to run in Kubernetes clusters and leverage CPU/GPU ressources.

## Is this secure?

PROBABLY NOT!

The idea behind the FAH client does mean that the FAH servers can talk to your client but with a very limited set of allowed action. The container themselves run as "root" inside the container but it should be easy
enough to create the user inside the container / let the FAH client run as that user.

The focus here was not on security but getting a quick POC going.

## How can I run it?

- Customize the `config.xml` file to suit your FAH credentials.
- Build the image using the provided Dockerfile.
- Push the image to your Docker registry.
- Deploy the application in Kubernetes (easy enough with Rancher - manually)


## Future things
- It would probably be good to have a Helm chart to deploy this as well (future project!)
- In his current form, the container will not leverage GPUs
