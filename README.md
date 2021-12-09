# Knative: Building modern services
Repository contains examples on how to use different DevOps tools that make life easier for developing and deploying container based services on Kubernetes. 
## Requirements
- Gradle 7.1.1
- AdoptOpenJDK 16.0.1
- Skaffold: https://skaffold.dev/
- Minikube: https://minikube.sigs.k8s.io/
- Docker Desktop or Podman
- (Optional) Sdkman: https://sdkman.io/ - package manager for java, gradle, etc.
- (Optional) For pushing to registry you will need registry (docker hub, gcr.io, etc.)

## Jib: containerized Java made easy
Building and pushing to remote container registry
```
./gradlew jib --image=<remote registry with image name and tag>
```
Build local container images
```
./gradlew jibDockerBuild --image=<image name and tag>
```
## Skaffold: fast kubernetes deployments
Deploying development environment to local cluster (minikube)
```
skaffold dev --port-forward
```
Deploying to production
```
skaffold run
```
## Knative Serving: Serverless with DevOps in mind
For more reference go to: https://knative.dev/docs/serving/, https://knative.tips/

Deploy to production with a rollout phase of 60 seconds
```
skaffold run -p production-knative
```
