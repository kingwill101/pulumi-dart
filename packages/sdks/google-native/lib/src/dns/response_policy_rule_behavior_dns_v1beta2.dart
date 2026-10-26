import 'package:pulumi/pulumi.dart' as pulumi;

/// Answer this query with a behavior rather than DNS data.
enum ResponsePolicyRuleBehaviorDnsV1beta2 implements pulumi.PulumiEnum<String> {
  behaviorUnspecified("behaviorUnspecified"),
  bypassResponsePolicy("bypassResponsePolicy");

  const ResponsePolicyRuleBehaviorDnsV1beta2(this.wireValue);
  @override
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
