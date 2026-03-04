/// The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
enum GlobalForwardingRuleIpProtocol {
  ah("AH"),
  all("ALL"),
  esp("ESP"),
  icmp("ICMP"),
  l3Default("L3_DEFAULT"),
  sctp("SCTP"),
  tcp("TCP"),
  udp("UDP");

  const GlobalForwardingRuleIpProtocol(this.wireValue);
  final String wireValue;

  static GlobalForwardingRuleIpProtocol fromValue(String value) {
    for (final item in GlobalForwardingRuleIpProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRuleIpProtocol value: $value');
  }
}
