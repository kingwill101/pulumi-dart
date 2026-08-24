// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLanStaticAddressingDhcpRelay {
  /// List of DHCP server IPs.
  final pulumi.Input<List<String>> serverAddresses;

  /// Creates a new [GetMagicTransitSiteLanStaticAddressingDhcpRelay].
  /// [serverAddresses] List of DHCP server IPs.
  const GetMagicTransitSiteLanStaticAddressingDhcpRelay({
    required this.serverAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverAddresses': serverAddresses,
    };
  }

  factory GetMagicTransitSiteLanStaticAddressingDhcpRelay.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanStaticAddressingDhcpRelay(
      serverAddresses: pulumi.Input.fromValue((map['serverAddresses'] as List).cast<String>()),
    );
  }
}
