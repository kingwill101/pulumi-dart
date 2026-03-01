/// The type of managed identity for the workspace
enum ResourceIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ResourceIdentityType(this.value);
  final String value;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}

