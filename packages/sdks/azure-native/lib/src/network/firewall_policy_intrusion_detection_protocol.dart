import 'package:pulumi/pulumi.dart' as pulumi;

/// The rule bypass protocol.
enum FirewallPolicyIntrusionDetectionProtocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueICMP("ICMP"),
  valueANY("ANY");

  const FirewallPolicyIntrusionDetectionProtocol(this.wireValue);
  @override
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
