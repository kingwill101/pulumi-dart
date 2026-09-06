import 'package:pulumi/pulumi.dart' as pulumi;

/// This determines if traffic is allowed over public network. By default it is enabled.
enum PublicNetworkAccessFlag implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const PublicNetworkAccessFlag(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccessFlag fromValue(String value) {
    for (final item in PublicNetworkAccessFlag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessFlag value: $value');
  }
}
