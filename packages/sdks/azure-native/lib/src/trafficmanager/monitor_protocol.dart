import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
enum MonitorProtocol implements pulumi.PulumiEnum<String> {
  hTTP("HTTP"),
  hTTPS("HTTPS"),
  tCP("TCP");

  const MonitorProtocol(this.wireValue);
  @override
  final String wireValue;

  static MonitorProtocol fromValue(String value) {
    for (final item in MonitorProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorProtocol value: $value');
  }
}
