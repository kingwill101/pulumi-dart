/// Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
enum BuildConfigDockerRegistry {
  dockerRegistryUnspecified("DOCKER_REGISTRY_UNSPECIFIED"),
  containerRegistry("CONTAINER_REGISTRY"),
  artifactRegistry("ARTIFACT_REGISTRY");

  const BuildConfigDockerRegistry(this.wireValue);
  final String wireValue;

  static BuildConfigDockerRegistry fromValue(String value) {
    for (final item in BuildConfigDockerRegistry.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildConfigDockerRegistry value: $value');
  }
}
