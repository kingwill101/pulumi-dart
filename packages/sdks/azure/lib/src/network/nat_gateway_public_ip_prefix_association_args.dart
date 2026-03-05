// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_nat_gateway_public_ip_prefix_association_nat_gateway_public_ip_prefix_association_args_doc}
/// The set of arguments for NatGatewayPublicIpPrefixAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_nat_gateway_public_ip_prefix_association_nat_gateway_public_ip_prefix_association_args_doc}
class NatGatewayPublicIpPrefixAssociationArgs {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> natGatewayId;
  /// The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> publicIpPrefixId;

  /// Creates a new [NatGatewayPublicIpPrefixAssociationArgs].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpPrefixId] The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  NatGatewayPublicIpPrefixAssociationArgs({
    required this.natGatewayId,
    required this.publicIpPrefixId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': natGatewayId,
      'publicIpPrefixId': publicIpPrefixId,
    };
  }

  factory NatGatewayPublicIpPrefixAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayPublicIpPrefixAssociationArgs(
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      publicIpPrefixId: pulumi.Input.fromValue(map['publicIpPrefixId'] as String),
    );
  }
}

