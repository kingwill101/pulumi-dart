// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_subnet_nat_gateway_association_subnet_nat_gateway_association_args_doc}
/// The set of arguments for SubnetNatGatewayAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_nat_gateway_association_subnet_nat_gateway_association_args_doc}
class SubnetNatGatewayAssociationArgs {
  /// The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String> natGatewayId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [SubnetNatGatewayAssociationArgs].
  /// [natGatewayId] The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet. Changing this forces a new resource to be created.
  SubnetNatGatewayAssociationArgs({
    required pulumi.Output<String> natGatewayId,
    required pulumi.Output<String> subnetId,
  }) :
      natGatewayId = pulumi.Input.asInput<String>(natGatewayId),
      subnetId = pulumi.Input.asInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': natGatewayId,
      'subnetId': subnetId,
    };
  }

  factory SubnetNatGatewayAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SubnetNatGatewayAssociationArgs(
      natGatewayId: pulumi.Output.create<String>(map['natGatewayId'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

