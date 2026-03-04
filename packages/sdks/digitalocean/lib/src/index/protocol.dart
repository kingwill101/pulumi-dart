enum Protocol {
  tCP("tcp"),
  uDP("udp"),
  iCMP("icmp"),
  hTTP("http"),
  hTTPS("https");

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
