/// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
enum SecurityPolicyRuleMatcherVersionedExpr {
  firewall("FIREWALL"),
  srcIpsV1("SRC_IPS_V1");

  const SecurityPolicyRuleMatcherVersionedExpr(this.wireValue);
  final String wireValue;

  static SecurityPolicyRuleMatcherVersionedExpr fromValue(String value) {
    for (final item in SecurityPolicyRuleMatcherVersionedExpr.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleMatcherVersionedExpr value: $value');
  }
}

