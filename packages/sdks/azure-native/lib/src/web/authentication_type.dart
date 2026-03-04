/// Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
enum AuthenticationType {
  valueSystemAssignedIdentity("SystemAssignedIdentity"),
  valueUserAssignedIdentity("UserAssignedIdentity"),
  valueStorageAccountConnectionString("StorageAccountConnectionString");

  const AuthenticationType(this.wireValue);
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
