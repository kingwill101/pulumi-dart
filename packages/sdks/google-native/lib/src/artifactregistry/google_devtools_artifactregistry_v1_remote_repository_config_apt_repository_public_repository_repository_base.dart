import 'package:pulumi/pulumi.dart' as pulumi;

/// A common public repository base for Apt.
enum GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase implements pulumi.PulumiEnum<String> {
  repositoryBaseUnspecified("REPOSITORY_BASE_UNSPECIFIED"),
  debian("DEBIAN"),
  ubuntu("UBUNTU"),
  debianSnapshot("DEBIAN_SNAPSHOT");

  const GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase(this.wireValue);
  @override
  final String wireValue;

  static GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase fromValue(String value) {
    for (final item in GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase value: $value');
  }
}
