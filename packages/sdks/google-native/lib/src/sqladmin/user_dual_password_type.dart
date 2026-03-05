/// Dual password status for the user.
enum UserDualPasswordType {
  dualPasswordTypeUnspecified("DUAL_PASSWORD_TYPE_UNSPECIFIED"),
  noModifyDualPassword("NO_MODIFY_DUAL_PASSWORD"),
  noDualPassword("NO_DUAL_PASSWORD"),
  dualPassword("DUAL_PASSWORD");

  const UserDualPasswordType(this.wireValue);
  final String wireValue;

  static UserDualPasswordType fromValue(String value) {
    for (final item in UserDualPasswordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserDualPasswordType value: $value');
  }
}

