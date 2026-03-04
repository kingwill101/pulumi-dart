/// One of the publicly available Npm repositories supported by Artifact Registry.
enum NpmRepositoryPublicRepository {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  npmjs("NPMJS");

  const NpmRepositoryPublicRepository(this.wireValue);
  final String wireValue;

  static NpmRepositoryPublicRepository fromValue(String value) {
    for (final item in NpmRepositoryPublicRepository.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NpmRepositoryPublicRepository value: $value');
  }
}
