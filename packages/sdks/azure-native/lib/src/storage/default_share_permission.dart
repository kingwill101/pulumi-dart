import 'package:pulumi/pulumi.dart' as pulumi;

/// Default share permission for users using Kerberos authentication if RBAC role is not assigned.
enum DefaultSharePermission implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueStorageFileDataSmbShareReader("StorageFileDataSmbShareReader"),
  valueStorageFileDataSmbShareContributor("StorageFileDataSmbShareContributor"),
  valueStorageFileDataSmbShareElevatedContributor("StorageFileDataSmbShareElevatedContributor");

  const DefaultSharePermission(this.wireValue);
  @override
  final String wireValue;

  static DefaultSharePermission fromValue(String value) {
    for (final item in DefaultSharePermission.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultSharePermission value: $value');
  }
}
