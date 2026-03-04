/// A common public repository base for Apt.
enum GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase {
  repositoryBaseUnspecified("REPOSITORY_BASE_UNSPECIFIED"),
  debian("DEBIAN"),
  ubuntu("UBUNTU"),
  debianSnapshot("DEBIAN_SNAPSHOT");

  const GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase(
    this.wireValue,
  );
  final String wireValue;

  static GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase
  fromValue(String value) {
    for (final item
        in GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepositoryRepositoryBase value: $value',
    );
  }
}
