// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteWansResultStaticAddressing {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> address;
  /// A valid IPv4 address.
  final pulumi.Input<String> gatewayAddress;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> secondaryAddress;
  /// Gateway address for the secondary connector of a high availability site.
  final pulumi.Input<String> secondaryGatewayAddress;

  /// Creates a new [GetMagicTransitSiteWansResultStaticAddressing].
  /// [address] A valid CIDR notation representing an IP range.
  /// [gatewayAddress] A valid IPv4 address.
  /// [secondaryAddress] A valid CIDR notation representing an IP range.
  /// [secondaryGatewayAddress] Gateway address for the secondary connector of a high availability site.
  const GetMagicTransitSiteWansResultStaticAddressing({
    required this.address,
    required this.gatewayAddress,
    required this.secondaryAddress,
    required this.secondaryGatewayAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'gatewayAddress': gatewayAddress,
      'secondaryAddress': secondaryAddress,
      'secondaryGatewayAddress': secondaryGatewayAddress,
    };
  }

  factory GetMagicTransitSiteWansResultStaticAddressing.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteWansResultStaticAddressing(
      address: pulumi.Input.fromValue(map['address'] as String),
      gatewayAddress: pulumi.Input.fromValue(map['gatewayAddress'] as String),
      secondaryAddress: pulumi.Input.fromValue(map['secondaryAddress'] as String),
      secondaryGatewayAddress: pulumi.Input.fromValue(map['secondaryGatewayAddress'] as String),
    );
  }
}
