/// The NFS protocol version.
enum NfsVersion {
  nFSauto("NFSauto"),
  nFSv3("NFSv3"),
  nFSv4("NFSv4");

  const NfsVersion(this.value);
  final String value;

  static NfsVersion fromValue(String value) {
    for (final item in NfsVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsVersion value: $value');
  }
}

