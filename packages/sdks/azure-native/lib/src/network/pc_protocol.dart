/// Protocol to be filtered on.
enum PcProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any");

  const PcProtocol(this.wireValue);
  final String wireValue;

  static PcProtocol fromValue(String value) {
    for (final item in PcProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PcProtocol value: $value');
  }
}

