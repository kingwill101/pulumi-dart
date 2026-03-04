/// The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
enum ForwardingRuleIpProtocolComputeV1 {
  ah("AH"),
  esp("ESP"),
  icmp("ICMP"),
  l3Default("L3_DEFAULT"),
  sctp("SCTP"),
  tcp("TCP"),
  udp("UDP");

  const ForwardingRuleIpProtocolComputeV1(this.wireValue);
  final String wireValue;

  static ForwardingRuleIpProtocolComputeV1 fromValue(String value) {
    for (final item in ForwardingRuleIpProtocolComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ForwardingRuleIpProtocolComputeV1 value: $value',
    );
  }
}
