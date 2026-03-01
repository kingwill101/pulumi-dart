/// The rule bypass protocol.
enum FirewallPolicyIntrusionDetectionProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueICMP("ICMP"),
  valueANY("ANY");

  const FirewallPolicyIntrusionDetectionProtocol(this.value);
  final String value;

  static FirewallPolicyIntrusionDetectionProtocol fromValue(String value) {
    for (final item in FirewallPolicyIntrusionDetectionProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyIntrusionDetectionProtocol value: $value');
  }
}

