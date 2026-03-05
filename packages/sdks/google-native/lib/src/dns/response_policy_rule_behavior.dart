/// Answer this query with a behavior rather than DNS data.
enum ResponsePolicyRuleBehavior {
  behaviorUnspecified("behaviorUnspecified"),
  bypassResponsePolicy("bypassResponsePolicy");

  const ResponsePolicyRuleBehavior(this.wireValue);
  final String wireValue;

  static ResponsePolicyRuleBehavior fromValue(String value) {
    for (final item in ResponsePolicyRuleBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponsePolicyRuleBehavior value: $value');
  }
}

