import 'package:pulumi/pulumi.dart' as pulumi;

/// Version policy defines the versions that the registry will accept.
enum MavenRepositoryConfigVersionPolicy implements pulumi.PulumiEnum<String> {
  versionPolicyUnspecified("VERSION_POLICY_UNSPECIFIED"),
  release("RELEASE"),
  snapshot("SNAPSHOT");

  const MavenRepositoryConfigVersionPolicy(this.wireValue);
  @override
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
