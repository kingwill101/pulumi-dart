/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum GlobalForwardingRuleIpVersionComputeV1 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalForwardingRuleIpVersionComputeV1(this.wireValue);
  final String wireValue;

  static GlobalForwardingRuleIpVersionComputeV1 fromValue(String value) {
    for (final item in GlobalForwardingRuleIpVersionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleIpVersionComputeV1 value: $value');
  }
}

