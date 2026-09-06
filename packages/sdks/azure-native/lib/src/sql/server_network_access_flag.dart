import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
enum ServerNetworkAccessFlag implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ServerNetworkAccessFlag(this.wireValue);
  @override
  final String wireValue;

  static ServerNetworkAccessFlag fromValue(String value) {
    for (final item in ServerNetworkAccessFlag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerNetworkAccessFlag value: $value');
  }
}
