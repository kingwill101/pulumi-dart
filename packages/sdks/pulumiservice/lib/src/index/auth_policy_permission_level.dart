enum AuthPolicyPermissionLevel {
  valueStandard("standard"),
  valueAdmin("admin");

  const AuthPolicyPermissionLevel(this.value);
  final String value;

  static AuthPolicyPermissionLevel fromValue(String value) {
    for (final item in AuthPolicyPermissionLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyPermissionLevel value: $value');
  }
}

