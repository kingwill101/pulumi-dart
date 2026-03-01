/// The scope on which the user should have permissions, in order to be able to create connections.
enum ProviderPermissionsScope {
  valueSubscription("Subscription"),
  valueResourceGroup("ResourceGroup"),
  valueWorkspace("Workspace");

  const ProviderPermissionsScope(this.value);
  final String value;

  static ProviderPermissionsScope fromValue(String value) {
    for (final item in ProviderPermissionsScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProviderPermissionsScope value: $value');
  }
}

