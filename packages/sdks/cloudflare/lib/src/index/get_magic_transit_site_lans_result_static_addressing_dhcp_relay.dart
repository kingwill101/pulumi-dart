// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteLansResultStaticAddressingDhcpRelay {
  /// List of DHCP server IPs.
  final pulumi.Input<List<String>> serverAddresses;

  /// Creates a new [GetMagicTransitSiteLansResultStaticAddressingDhcpRelay].
  /// [serverAddresses] List of DHCP server IPs.
  const GetMagicTransitSiteLansResultStaticAddressingDhcpRelay({
    required this.serverAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverAddresses': serverAddresses,
    };
  }

  factory GetMagicTransitSiteLansResultStaticAddressingDhcpRelay.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLansResultStaticAddressingDhcpRelay(
      serverAddresses: pulumi.Input.fromValue((map['serverAddresses'] as List).cast<String>()),
    );
  }
}
