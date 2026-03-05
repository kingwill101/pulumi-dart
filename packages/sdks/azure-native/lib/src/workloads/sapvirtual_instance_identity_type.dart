/// The type of managed identity assigned to this resource.
enum SAPVirtualInstanceIdentityType {
  none("None"),
  userAssigned("UserAssigned");

  const SAPVirtualInstanceIdentityType(this.wireValue);
  final String wireValue;

  static SAPVirtualInstanceIdentityType fromValue(String value) {
    for (final item in SAPVirtualInstanceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPVirtualInstanceIdentityType value: $value');
  }
}

