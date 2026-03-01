// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetNatGatewayAssociation resources.
class SubnetNatGatewayAssociationState {
  /// The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natGatewayId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SubnetNatGatewayAssociationState].
  /// [natGatewayId] The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet. Changing this forces a new resource to be created.
  SubnetNatGatewayAssociationState({
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? subnetId,
  }) :
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': ?natGatewayId,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetNatGatewayAssociationState.fromMap(Map<String, dynamic> map) {
    return SubnetNatGatewayAssociationState(
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

