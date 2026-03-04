/// RNM supported protocol types.
enum ProtocolType {
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
