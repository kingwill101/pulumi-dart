/// Default share permission for users using Kerberos authentication if RBAC role is not assigned.
enum DefaultSharePermission {
  valueNone("None"),
  valueStorageFileDataSmbShareReader("StorageFileDataSmbShareReader"),
  valueStorageFileDataSmbShareContributor("StorageFileDataSmbShareContributor"),
  valueStorageFileDataSmbShareElevatedContributor("StorageFileDataSmbShareElevatedContributor");

  const DefaultSharePermission(this.value);
  final String value;

  static DefaultSharePermission fromValue(String value) {
    for (final item in DefaultSharePermission.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultSharePermission value: $value');
  }
}

