/// Optional. Type of this user.
enum UserUserType {
  userTypeUnspecified("USER_TYPE_UNSPECIFIED"),
  alloydbBuiltIn("ALLOYDB_BUILT_IN"),
  alloydbIamUser("ALLOYDB_IAM_USER");

  const UserUserType(this.wireValue);
  final String wireValue;

  static UserUserType fromValue(String value) {
    for (final item in UserUserType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserUserType value: $value');
  }
}
