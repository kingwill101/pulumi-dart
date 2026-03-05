/// Optional. Type of this user.
enum UserUserTypeAlloydbV1beta {
  userTypeUnspecified("USER_TYPE_UNSPECIFIED"),
  alloydbBuiltIn("ALLOYDB_BUILT_IN"),
  alloydbIamUser("ALLOYDB_IAM_USER");

  const UserUserTypeAlloydbV1beta(this.wireValue);
  final String wireValue;

  static UserUserTypeAlloydbV1beta fromValue(String value) {
    for (final item in UserUserTypeAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserUserTypeAlloydbV1beta value: $value');
  }
}

