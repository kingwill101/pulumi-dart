import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the ManagementServer resource.
enum ManagementServerType implements pulumi.PulumiEnum<String> {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  backupRestore("BACKUP_RESTORE");

  const ManagementServerType(this.wireValue);
  @override
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
