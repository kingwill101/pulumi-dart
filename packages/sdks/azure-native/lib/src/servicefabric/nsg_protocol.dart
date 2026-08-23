/// Network protocol this rule applies to.
enum NsgProtocol {
  valueHttp("http"),
  valueHttps("https"),
  valueTcp("tcp"),
  valueUdp("udp"),
  valueIcmp("icmp"),
  valueAh("ah"),
  valueEsp("esp");

  const NsgProtocol(this.wireValue);
  final String wireValue;

  static NsgProtocol fromValue(String value) {
    for (final item in NsgProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NsgProtocol value: $value');
  }
}
