import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN authentication types enabled for the VpnServerConfiguration.
enum VpnAuthenticationType implements pulumi.PulumiEnum<String> {
  valueCertificate("Certificate"),
  valueRadius("Radius"),
  valueAAD("AAD");

  const VpnAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static VpnAuthenticationType fromValue(String value) {
    for (final item in VpnAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnAuthenticationType value: $value');
  }
}
