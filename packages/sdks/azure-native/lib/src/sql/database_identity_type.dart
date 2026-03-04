/// The identity type
enum DatabaseIdentityType {
  valueNone("None"),
  valueUserAssigned("UserAssigned");

  const DatabaseIdentityType(this.wireValue);
  final String wireValue;

  static DatabaseIdentityType fromValue(String value) {
    for (final item in DatabaseIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseIdentityType value: $value');
  }
}
