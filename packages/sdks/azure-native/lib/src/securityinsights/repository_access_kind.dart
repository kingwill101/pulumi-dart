/// The kind of repository access credentials
enum RepositoryAccessKind {
  valueOAuth("OAuth"),
  valuePAT("PAT"),
  valueApp("App");

  const RepositoryAccessKind(this.wireValue);
  final String wireValue;

  static RepositoryAccessKind fromValue(String value) {
    for (final item in RepositoryAccessKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryAccessKind value: $value');
  }
}
