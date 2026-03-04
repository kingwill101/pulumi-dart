/// Type of OS for which the key is requested.
enum OsType {
  valueWindows7("Windows7"),
  valueWindowsServer2008("WindowsServer2008"),
  valueWindowsServer2008R2("WindowsServer2008R2");

  const OsType(this.wireValue);
  final String wireValue;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}
