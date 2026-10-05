import 'package:pulumi/pulumi.dart' as pulumi;

/// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
enum SecurityPolicyRuleMatcherVersionedExprComputeV1 implements pulumi.PulumiEnum<String> {
  srcIpsV1("SRC_IPS_V1");

  const SecurityPolicyRuleMatcherVersionedExprComputeV1(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyRuleMatcherVersionedExprComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyRuleMatcherVersionedExprComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleMatcherVersionedExprComputeV1 value: $value');
  }
}
