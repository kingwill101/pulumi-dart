// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteWanStaticAddressing {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> address;
  /// A valid IPv4 address.
  final pulumi.Input<String> gatewayAddress;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String?>? secondaryAddress;
  /// Gateway address for the secondary connector of a high availability site.
  final pulumi.Input<String?>? secondaryGatewayAddress;

  /// Creates a new [MagicTransitSiteWanStaticAddressing].
  /// [address] A valid CIDR notation representing an IP range.
  /// [gatewayAddress] A valid IPv4 address.
  /// [secondaryAddress] A valid CIDR notation representing an IP range.
  /// [secondaryGatewayAddress] Gateway address for the secondary connector of a high availability site.
  const MagicTransitSiteWanStaticAddressing({
    required this.address,
    required this.gatewayAddress,
    this.secondaryAddress,
    this.secondaryGatewayAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'gatewayAddress': gatewayAddress,
      'secondaryAddress': ?secondaryAddress,
      'secondaryGatewayAddress': ?secondaryGatewayAddress,
    };
  }

  factory MagicTransitSiteWanStaticAddressing.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteWanStaticAddressing(
      address: pulumi.Input.fromValue(map['address'] as String),
      gatewayAddress: pulumi.Input.fromValue(map['gatewayAddress'] as String),
      secondaryAddress: (() { final guardedValue = map['secondaryAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryGatewayAddress: (() { final guardedValue = map['secondaryGatewayAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
