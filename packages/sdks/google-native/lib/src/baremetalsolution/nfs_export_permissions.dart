/// Export permissions.
enum NfsExportPermissions {
  permissionsUnspecified("PERMISSIONS_UNSPECIFIED"),
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const NfsExportPermissions(this.wireValue);
  final String wireValue;

  static NfsExportPermissions fromValue(String value) {
    for (final item in NfsExportPermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportPermissions value: $value');
  }
}

