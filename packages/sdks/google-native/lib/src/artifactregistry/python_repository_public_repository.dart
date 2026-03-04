/// One of the publicly available Python repositories supported by Artifact Registry.
enum PythonRepositoryPublicRepository {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  pypi("PYPI");

  const PythonRepositoryPublicRepository(this.wireValue);
  final String wireValue;

  static PythonRepositoryPublicRepository fromValue(String value) {
    for (final item in PythonRepositoryPublicRepository.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PythonRepositoryPublicRepository value: $value',
    );
  }
}
