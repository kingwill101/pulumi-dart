/// Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
enum BuildConfigDockerRegistryCloudfunctionsV2alpha {
  dockerRegistryUnspecified("DOCKER_REGISTRY_UNSPECIFIED"),
  containerRegistry("CONTAINER_REGISTRY"),
  artifactRegistry("ARTIFACT_REGISTRY");

  const BuildConfigDockerRegistryCloudfunctionsV2alpha(this.wireValue);
  final String wireValue;

  static BuildConfigDockerRegistryCloudfunctionsV2alpha fromValue(String value) {
    for (final item in BuildConfigDockerRegistryCloudfunctionsV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildConfigDockerRegistryCloudfunctionsV2alpha value: $value');
  }
}

