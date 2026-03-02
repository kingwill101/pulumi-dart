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
    this.natGatewayId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': ?natGatewayId,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetNatGatewayAssociationState.fromMap(Map<String, dynamic> map) {
    return SubnetNatGatewayAssociationState(
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

