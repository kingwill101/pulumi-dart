// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicTransitSiteWanStaticAddressing {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> address;
  /// A valid IPv4 address.
  final pulumi.Input<String> gatewayAddress;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> secondaryAddress;

  /// Creates a new [GetMagicTransitSiteWanStaticAddressing].
  /// [address] A valid CIDR notation representing an IP range.
  /// [gatewayAddress] A valid IPv4 address.
  /// [secondaryAddress] A valid CIDR notation representing an IP range.
  const GetMagicTransitSiteWanStaticAddressing({
    required this.address,
    required this.gatewayAddress,
    required this.secondaryAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'gatewayAddress': gatewayAddress,
      'secondaryAddress': secondaryAddress,
    };
  }

  factory GetMagicTransitSiteWanStaticAddressing.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteWanStaticAddressing(
      address: pulumi.Input.fromValue(map['address'] as String),
      gatewayAddress: pulumi.Input.fromValue(map['gatewayAddress'] as String),
      secondaryAddress: pulumi.Input.fromValue(map['secondaryAddress'] as String),
    );
  }
}
