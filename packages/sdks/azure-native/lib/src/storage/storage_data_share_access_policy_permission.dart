/// Allowed permissions. Currently, only supported value is Read.
enum StorageDataShareAccessPolicyPermission {
  none("None"),
  read("Read");

  const StorageDataShareAccessPolicyPermission(this.wireValue);
  final String wireValue;

  static StorageDataShareAccessPolicyPermission fromValue(String value) {
    for (final item in StorageDataShareAccessPolicyPermission.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageDataShareAccessPolicyPermission value: $value');
  }
}
