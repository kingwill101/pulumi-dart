/// The type of managed identity that is being selected.
enum ManagedServiceIdentitySelectorType {
  valueSystemAssignedIdentity("SystemAssignedIdentity"),
  valueUserAssignedIdentity("UserAssignedIdentity");

  const ManagedServiceIdentitySelectorType(this.wireValue);
  final String wireValue;

  static ManagedServiceIdentitySelectorType fromValue(String value) {
    for (final item in ManagedServiceIdentitySelectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagedServiceIdentitySelectorType value: $value',
    );
  }
}
