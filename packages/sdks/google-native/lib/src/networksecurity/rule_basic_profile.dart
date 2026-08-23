/// Required. Profile which tells what the primitive action should be.
enum RuleBasicProfile {
  basicProfileUnspecified("BASIC_PROFILE_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const RuleBasicProfile(this.wireValue);
  final String wireValue;

  static RuleBasicProfile fromValue(String value) {
    for (final item in RuleBasicProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleBasicProfile value: $value');
  }
}
