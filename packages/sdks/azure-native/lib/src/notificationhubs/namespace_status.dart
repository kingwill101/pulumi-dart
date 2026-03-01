/// Namespace status.
enum NamespaceStatus {
  created("Created"),
  creating("Creating"),
  suspended("Suspended"),
  deleting("Deleting");

  const NamespaceStatus(this.value);
  final String value;

  static NamespaceStatus fromValue(String value) {
    for (final item in NamespaceStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamespaceStatus value: $value');
  }
}

