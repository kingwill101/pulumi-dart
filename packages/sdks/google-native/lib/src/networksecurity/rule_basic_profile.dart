/// Required. Profile which tells what the primitive action should be.
enum RuleBasicProfile {
  basicProfileUnspecified("BASIC_PROFILE_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const RuleBasicProfile(this.value);
  final String value;

  static RuleBasicProfile fromValue(String value) {
    for (final item in RuleBasicProfile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleBasicProfile value: $value');
  }
}

