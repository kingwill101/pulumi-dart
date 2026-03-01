/// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
enum SecurityPolicyRuleMatcherVersionedExprComputeBeta {
  firewall("FIREWALL"),
  srcIpsV1("SRC_IPS_V1");

  const SecurityPolicyRuleMatcherVersionedExprComputeBeta(this.value);
  final String value;

  static SecurityPolicyRuleMatcherVersionedExprComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyRuleMatcherVersionedExprComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleMatcherVersionedExprComputeBeta value: $value');
  }
}

