/// The NFS protocol version.
enum NfsVersion {
  nFSauto("NFSauto"),
  nFSv3("NFSv3"),
  nFSv4("NFSv4");

  const NfsVersion(this.wireValue);
  final String wireValue;

  static NfsVersion fromValue(String value) {
    for (final item in NfsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsVersion value: $value');
  }
}

