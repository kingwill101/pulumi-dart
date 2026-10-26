import 'package:pulumi/pulumi.dart' as pulumi;

/// One of the publicly available Maven repositories supported by Artifact Registry.
enum MavenRepositoryPublicRepository implements pulumi.PulumiEnum<String> {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  mavenCentral("MAVEN_CENTRAL");

  const MavenRepositoryPublicRepository(this.wireValue);
  @override
  final String wireValue;

  static MavenRepositoryPublicRepository fromValue(String value) {
    for (final item in MavenRepositoryPublicRepository.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MavenRepositoryPublicRepository value: $value');
  }
}
