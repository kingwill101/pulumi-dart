/// Required. The type of the ManagementServer resource.
enum ManagementServerType {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  backupRestore("BACKUP_RESTORE");

  const ManagementServerType(this.wireValue);
  final String wireValue;

  static ManagementServerType fromValue(String value) {
    for (final item in ManagementServerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagementServerType value: $value');
  }
}
