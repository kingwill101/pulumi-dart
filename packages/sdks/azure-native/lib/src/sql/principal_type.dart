/// Principal Type of the sever administrator.
enum PrincipalType {
  valueUser("User"),
  valueGroup("Group"),
  valueApplication("Application");

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

