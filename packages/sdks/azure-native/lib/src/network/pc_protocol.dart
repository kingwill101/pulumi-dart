/// Protocol to be filtered on.
enum PcProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any");

  const PcProtocol(this.value);
  final String value;

  static PcProtocol fromValue(String value) {
    for (final item in PcProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PcProtocol value: $value');
  }
}

