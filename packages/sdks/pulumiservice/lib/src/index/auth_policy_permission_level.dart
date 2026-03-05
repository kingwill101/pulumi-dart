enum AuthPolicyPermissionLevel {
  valueStandard("standard"),
  valueAdmin("admin");

  const AuthPolicyPermissionLevel(this.wireValue);
  final String wireValue;

  static AuthPolicyPermissionLevel fromValue(String value) {
    for (final item in AuthPolicyPermissionLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyPermissionLevel value: $value');
  }
}

