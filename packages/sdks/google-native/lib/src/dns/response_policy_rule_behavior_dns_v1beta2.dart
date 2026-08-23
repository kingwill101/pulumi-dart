/// Answer this query with a behavior rather than DNS data.
enum ResponsePolicyRuleBehaviorDnsV1beta2 {
  behaviorUnspecified("behaviorUnspecified"),
  bypassResponsePolicy("bypassResponsePolicy");

  const ResponsePolicyRuleBehaviorDnsV1beta2(this.wireValue);
  final String wireValue;

  static ResponsePolicyRuleBehaviorDnsV1beta2 fromValue(String value) {
    for (final item in ResponsePolicyRuleBehaviorDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponsePolicyRuleBehaviorDnsV1beta2 value: $value');
  }
}
