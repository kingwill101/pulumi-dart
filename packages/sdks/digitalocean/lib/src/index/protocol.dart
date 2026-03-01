enum Protocol {
  tCP("tcp"),
  uDP("udp"),
  iCMP("icmp"),
  hTTP("http"),
  hTTPS("https");

  const Protocol(this.value);
  final String value;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}

