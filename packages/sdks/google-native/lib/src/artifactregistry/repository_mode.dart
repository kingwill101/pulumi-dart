/// Optional. The mode of the repository.
enum RepositoryMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  standardRepository("STANDARD_REPOSITORY"),
  virtualRepository("VIRTUAL_REPOSITORY"),
  remoteRepository("REMOTE_REPOSITORY");

  const RepositoryMode(this.value);
  final String value;

  static RepositoryMode fromValue(String value) {
    for (final item in RepositoryMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryMode value: $value');
  }
}

