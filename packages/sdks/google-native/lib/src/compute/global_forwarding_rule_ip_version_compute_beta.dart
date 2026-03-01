/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum GlobalForwardingRuleIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalForwardingRuleIpVersionComputeBeta(this.value);
  final String value;

  static GlobalForwardingRuleIpVersionComputeBeta fromValue(String value) {
    for (final item in GlobalForwardingRuleIpVersionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleIpVersionComputeBeta value: $value');
  }
}

