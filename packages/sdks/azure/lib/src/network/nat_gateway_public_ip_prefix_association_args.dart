// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_nat_gateway_public_ip_prefix_association_nat_gateway_public_ip_prefix_association_args_doc}
/// The set of arguments for NatGatewayPublicIpPrefixAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_nat_gateway_public_ip_prefix_association_nat_gateway_public_ip_prefix_association_args_doc}
class NatGatewayPublicIpPrefixAssociationArgs {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> natGatewayId;
  /// The ID of the Public IP Prefix which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `natGatewayId` references a NAT Gateway with SKU `Standard`, `publicIpPrefixId` must reference a Public IP Prefix with SKU `Standard`. When `natGatewayId` references a NAT Gateway with SKU `StandardV2`, `publicIpPrefixId` must reference a Public IP Prefix with SKU `StandardV2`.
  ///
  /// &gt; **Note:** When `publicIpPrefixId` references an `IPv6` Public IP Prefix, `natGatewayId` must reference a NAT Gateway with SKU `StandardV2`, and `publicIpPrefixId` must reference an `IPv6` Public IP Prefix with SKU `StandardV2`.
  final pulumi.Input<String> publicIpPrefixId;

  /// Creates a new [NatGatewayPublicIpPrefixAssociationArgs].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpPrefixId] The ID of the Public IP Prefix which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  const NatGatewayPublicIpPrefixAssociationArgs({
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
