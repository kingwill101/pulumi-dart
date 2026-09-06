import 'package:pulumi/pulumi.dart' as pulumi;

/// property to enable or disable resource provider inbound network traffic from public clients
enum PublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}
