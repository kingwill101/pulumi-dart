/// The type of managed identity.
enum ManagedIdentityResourceType {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

  const ManagedIdentityResourceType(this.value);
  final String value;

  static ManagedIdentityResourceType fromValue(String value) {
    for (final item in ManagedIdentityResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityResourceType value: $value');
  }
}

