import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
enum ServerPublicNetworkAccessFlag implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const ServerPublicNetworkAccessFlag(this.wireValue);
  @override
  final String wireValue;

  static ServerPublicNetworkAccessFlag fromValue(String value) {
    for (final item in ServerPublicNetworkAccessFlag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerPublicNetworkAccessFlag value: $value');
  }
}
