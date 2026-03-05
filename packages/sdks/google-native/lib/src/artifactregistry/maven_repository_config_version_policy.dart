/// Version policy defines the versions that the registry will accept.
enum MavenRepositoryConfigVersionPolicy {
  versionPolicyUnspecified("VERSION_POLICY_UNSPECIFIED"),
  release("RELEASE"),
  snapshot("SNAPSHOT");

  const MavenRepositoryConfigVersionPolicy(this.wireValue);
  final String wireValue;

  static MavenRepositoryConfigVersionPolicy fromValue(String value) {
    for (final item in MavenRepositoryConfigVersionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MavenRepositoryConfigVersionPolicy value: $value');
  }
}

