/// The operating system type of the cloud shell. Deprecated, use preferredShellType.
enum OsType {
  valueWindows("Windows"),
  valueLinux("Linux");

  const OsType(this.value);
  final String value;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}

