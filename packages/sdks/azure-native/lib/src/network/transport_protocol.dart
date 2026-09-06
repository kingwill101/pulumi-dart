import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the transport protocol used by the load balancing rule.
enum TransportProtocol implements pulumi.PulumiEnum<String> {
  valueUdp("Udp"),
  valueTcp("Tcp"),
  valueAll("All");

  const TransportProtocol(this.wireValue);
  @override
  final String wireValue;

  static TransportProtocol fromValue(String value) {
    for (final item in TransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransportProtocol value: $value');
  }
}
