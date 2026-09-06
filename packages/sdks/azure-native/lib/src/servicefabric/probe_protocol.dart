import 'package:pulumi/pulumi.dart' as pulumi;

/// the reference to the load balancer probe used by the load balancing rule.
enum ProbeProtocol implements pulumi.PulumiEnum<String> {
  valueTcp("tcp"),
  valueHttp("http"),
  valueHttps("https");

  const ProbeProtocol(this.wireValue);
  @override
  final String wireValue;

  static ProbeProtocol fromValue(String value) {
    for (final item in ProbeProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProbeProtocol value: $value');
  }
}
