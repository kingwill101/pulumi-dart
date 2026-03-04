/// The reference to the transport protocol used by the load balancing rule.
enum Protocol {
  valueTcp("tcp"),
  valueUdp("udp");

  const Protocol(this.wireValue);
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
