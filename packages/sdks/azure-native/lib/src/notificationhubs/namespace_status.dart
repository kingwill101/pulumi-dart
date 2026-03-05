/// Namespace status.
enum NamespaceStatus {
  created("Created"),
  creating("Creating"),
  suspended("Suspended"),
  deleting("Deleting");

  const NamespaceStatus(this.wireValue);
  final String wireValue;

  static NamespaceStatus fromValue(String value) {
    for (final item in NamespaceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamespaceStatus value: $value');
  }
}

