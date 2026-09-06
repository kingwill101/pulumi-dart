import 'package:pulumi/pulumi.dart' as pulumi;

/// Network protocol this resource applies to.
enum NetworkProtocol implements pulumi.PulumiEnum<String> {
  valueAny("Any"),
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueICMP("ICMP");

  const NetworkProtocol(this.wireValue);
  @override
  final String wireValue;

  static NetworkProtocol fromValue(String value) {
    for (final item in NetworkProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkProtocol value: $value');
  }
}
