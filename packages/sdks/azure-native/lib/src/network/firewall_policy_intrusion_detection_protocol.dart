/// The rule bypass protocol.
enum FirewallPolicyIntrusionDetectionProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueICMP("ICMP"),
  valueANY("ANY");

  const FirewallPolicyIntrusionDetectionProtocol(this.wireValue);
  final String wireValue;

  static FirewallPolicyIntrusionDetectionProtocol fromValue(String value) {
    for (final item in FirewallPolicyIntrusionDetectionProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyIntrusionDetectionProtocol value: $value');
  }
}
