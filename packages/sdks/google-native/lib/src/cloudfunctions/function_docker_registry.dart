/// Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
enum FunctionDockerRegistry {
  dockerRegistryUnspecified("DOCKER_REGISTRY_UNSPECIFIED"),
  containerRegistry("CONTAINER_REGISTRY"),
  artifactRegistry("ARTIFACT_REGISTRY");

  const FunctionDockerRegistry(this.wireValue);
  final String wireValue;

  static FunctionDockerRegistry fromValue(String value) {
    for (final item in FunctionDockerRegistry.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionDockerRegistry value: $value');
  }
}

