/// Type of managed service identity.
enum IdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const IdentityType(this.wireValue);
  final String wireValue;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}
