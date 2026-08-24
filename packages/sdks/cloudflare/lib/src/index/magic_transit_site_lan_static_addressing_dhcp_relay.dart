// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteLanStaticAddressingDhcpRelay {
  /// List of DHCP server IPs.
  final pulumi.Input<List<String>?>? serverAddresses;

  /// Creates a new [MagicTransitSiteLanStaticAddressingDhcpRelay].
  /// [serverAddresses] List of DHCP server IPs.
  const MagicTransitSiteLanStaticAddressingDhcpRelay({
    this.serverAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverAddresses': ?serverAddresses,
    };
  }

  factory MagicTransitSiteLanStaticAddressingDhcpRelay.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanStaticAddressingDhcpRelay(
      serverAddresses: (() { final guardedValue = map['serverAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
