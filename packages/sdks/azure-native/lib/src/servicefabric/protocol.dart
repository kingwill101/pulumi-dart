import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to the transport protocol used by the load balancing rule.
enum Protocol implements pulumi.PulumiEnum<String> {
  valueTcp("tcp"),
  valueUdp("udp");

  const Protocol(this.wireValue);
  @override
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}
