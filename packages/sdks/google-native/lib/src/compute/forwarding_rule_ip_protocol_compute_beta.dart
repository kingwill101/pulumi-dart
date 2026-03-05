/// The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
enum ForwardingRuleIpProtocolComputeBeta {
  ah("AH"),
  esp("ESP"),
  icmp("ICMP"),
  l3Default("L3_DEFAULT"),
  sctp("SCTP"),
  tcp("TCP"),
  udp("UDP");

  const ForwardingRuleIpProtocolComputeBeta(this.wireValue);
  final String wireValue;

  static ForwardingRuleIpProtocolComputeBeta fromValue(String value) {
    for (final item in ForwardingRuleIpProtocolComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleIpProtocolComputeBeta value: $value');
  }
}

