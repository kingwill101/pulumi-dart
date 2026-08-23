enum Protocol {
  tCP("TCP"),
  uDP("UDP"),
  all("*");

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
