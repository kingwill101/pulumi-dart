// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_nat_gateway_public_ip_association_nat_gateway_public_ip_association_args_doc}
/// The set of arguments for NatGatewayPublicIpAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_nat_gateway_public_ip_association_nat_gateway_public_ip_association_args_doc}
class NatGatewayPublicIpAssociationArgs {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> natGatewayId;
  /// The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> publicIpAddressId;

  /// Creates a new [NatGatewayPublicIpAssociationArgs].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpAddressId] The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  const NatGatewayPublicIpAssociationArgs({
    required this.natGatewayId,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': natGatewayId,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NatGatewayPublicIpAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayPublicIpAssociationArgs(
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
    );
  }
}

