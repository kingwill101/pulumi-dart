import 'package:pulumi/pulumi.dart' as pulumi;

/// Incoming Traffic Policy
enum IncomingTrafficPolicy implements pulumi.PulumiEnum<String> {
  allowAllTraffic("AllowAllTraffic"),
  allowVirtualNetworksOnly("AllowVirtualNetworksOnly");

  const IncomingTrafficPolicy(this.wireValue);
  @override
  final String wireValue;

  static IncomingTrafficPolicy fromValue(String value) {
    for (final item in IncomingTrafficPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncomingTrafficPolicy value: $value');
  }
}
