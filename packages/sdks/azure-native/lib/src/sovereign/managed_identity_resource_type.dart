/// The type of managed identity.
enum ManagedIdentityResourceType {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

  const ManagedIdentityResourceType(this.wireValue);
  final String wireValue;

  static ManagedIdentityResourceType fromValue(String value) {
    for (final item in ManagedIdentityResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityResourceType value: $value');
  }
}
