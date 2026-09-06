import 'package:pulumi/pulumi.dart' as pulumi;

/// Allowed permissions. Currently, only supported value is Read.
enum StorageDataShareAccessPolicyPermission implements pulumi.PulumiEnum<String> {
  none("None"),
  read("Read");

  const StorageDataShareAccessPolicyPermission(this.wireValue);
  @override
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
