/// Network protocol this rule applies to.
enum NsgProtocol {
  valueHttp("http"),
  valueHttps("https"),
  valueTcp("tcp"),
  valueUdp("udp"),
  valueIcmp("icmp"),
  valueAh("ah"),
  valueEsp("esp");

  const NsgProtocol(this.value);
  final String value;

  static NsgProtocol fromValue(String value) {
    for (final item in NsgProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NsgProtocol value: $value');
  }
}

