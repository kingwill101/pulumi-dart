/// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
enum SharingScope {
  valueTenant("Tenant"),
  valueDelegatedServices("DelegatedServices");

  const SharingScope(this.wireValue);
  final String wireValue;

  static SharingScope fromValue(String value) {
    for (final item in SharingScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SharingScope value: $value');
  }
}
