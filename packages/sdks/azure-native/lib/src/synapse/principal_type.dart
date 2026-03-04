/// Principal type.
enum PrincipalType {
  valueApp("App"),
  valueGroup("Group"),
  valueUser("User");

  const PrincipalType(this.wireValue);
  final String wireValue;

  static PrincipalType fromValue(String value) {
    for (final item in PrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalType value: $value');
  }
}
