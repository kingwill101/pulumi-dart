/// Optional. Type of this user.
enum UserUserTypeAlloydbV1alpha {
  userTypeUnspecified("USER_TYPE_UNSPECIFIED"),
  alloydbBuiltIn("ALLOYDB_BUILT_IN"),
  alloydbIamUser("ALLOYDB_IAM_USER");

  const UserUserTypeAlloydbV1alpha(this.wireValue);
  final String wireValue;

  static UserUserTypeAlloydbV1alpha fromValue(String value) {
    for (final item in UserUserTypeAlloydbV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserUserTypeAlloydbV1alpha value: $value');
  }
}
