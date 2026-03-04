/// Optional. The format of packages that are stored in the repository.
enum RepositoryFormatArtifactregistryV1beta1 {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  docker("DOCKER"),
  maven("MAVEN"),
  npm("NPM"),
  apt("APT"),
  yum("YUM"),
  googet("GOOGET"),
  python("PYTHON");

  const RepositoryFormatArtifactregistryV1beta1(this.wireValue);
  final String wireValue;

  static RepositoryFormatArtifactregistryV1beta1 fromValue(String value) {
    for (final item in RepositoryFormatArtifactregistryV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RepositoryFormatArtifactregistryV1beta1 value: $value',
    );
  }
}
