/// Network protocol this resource applies to.
enum NetworkProtocol {
  valueAny("Any"),
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueICMP("ICMP");

  const NetworkProtocol(this.wireValue);
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
