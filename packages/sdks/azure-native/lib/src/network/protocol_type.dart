import 'package:pulumi/pulumi.dart' as pulumi;

/// RNM supported protocol types.
enum ProtocolType implements pulumi.PulumiEnum<String> {
  valueDoNotUse("DoNotUse"),
  valueIcmp("Icmp"),
  valueTcp("Tcp"),
  valueUdp("Udp"),
  valueGre("Gre"),
  valueEsp("Esp"),
  valueAh("Ah"),
  valueVxlan("Vxlan"),
  valueAll("All");

  const ProtocolType(this.wireValue);
  @override
  final String wireValue;

  static ProtocolType fromValue(String value) {
    for (final item in ProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolType value: $value');
  }
}
