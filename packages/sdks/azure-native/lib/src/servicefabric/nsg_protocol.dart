import 'package:pulumi/pulumi.dart' as pulumi;

/// Network protocol this rule applies to.
enum NsgProtocol implements pulumi.PulumiEnum<String> {
  valueHttp("http"),
  valueHttps("https"),
  valueTcp("tcp"),
  valueUdp("udp"),
  valueIcmp("icmp"),
  valueAh("ah"),
  valueEsp("esp");

  const NsgProtocol(this.wireValue);
  @override
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
