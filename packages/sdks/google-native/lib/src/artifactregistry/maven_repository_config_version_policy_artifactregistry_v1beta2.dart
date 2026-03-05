/// Version policy defines the versions that the registry will accept.
enum MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2 {
  versionPolicyUnspecified("VERSION_POLICY_UNSPECIFIED"),
  release("RELEASE"),
  snapshot("SNAPSHOT");

  const MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2(this.wireValue);
  final String wireValue;

  static MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2 fromValue(String value) {
    for (final item in MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2 value: $value');
  }
}

