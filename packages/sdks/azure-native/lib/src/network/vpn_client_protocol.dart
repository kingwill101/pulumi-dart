import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN client protocol enabled for the virtual network gateway.
enum VpnClientProtocol implements pulumi.PulumiEnum<String> {
  valueIkeV2("IkeV2"),
  valueSSTP("SSTP"),
  valueOpenVPN("OpenVPN");

  const VpnClientProtocol(this.wireValue);
  @override
  final String wireValue;

  static VpnClientProtocol fromValue(String value) {
    for (final item in VpnClientProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnClientProtocol value: $value');
  }
}
