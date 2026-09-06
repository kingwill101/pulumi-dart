import 'package:pulumi/pulumi.dart' as pulumi;

/// Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
enum AuthenticationType implements pulumi.PulumiEnum<String> {
  systemAssignedIdentity("SystemAssignedIdentity"),
  userAssignedIdentity("UserAssignedIdentity"),
  storageAccountConnectionString("StorageAccountConnectionString");

  const AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}
