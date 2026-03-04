/// The scope on which the user should have permissions, in order to be able to create connections.
enum ProviderPermissionsScope {
  valueSubscription("Subscription"),
  valueResourceGroup("ResourceGroup"),
  valueWorkspace("Workspace");

  const ProviderPermissionsScope(this.wireValue);
  final String wireValue;

  static ProviderPermissionsScope fromValue(String value) {
    for (final item in ProviderPermissionsScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProviderPermissionsScope value: $value');
  }
}
