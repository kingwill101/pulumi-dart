import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the IP mode of the app.
enum IPMode implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6"),
  valueIPv4AndIPv6("IPv4AndIPv6");

  const IPMode(this.wireValue);
  @override
  final String wireValue;

  static IPMode fromValue(String value) {
    for (final item in IPMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPMode value: $value');
  }
}
