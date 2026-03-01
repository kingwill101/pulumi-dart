// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatGatewayPublicIpAssociation resources.
class NatGatewayPublicIpAssociationState {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natGatewayId;
  /// The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpAddressId;

  /// Creates a new [NatGatewayPublicIpAssociationState].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpAddressId] The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  NatGatewayPublicIpAssociationState({
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? publicIpAddressId,
  }) :
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      publicIpAddressId = pulumi.Input.asOptionalInput<String>(publicIpAddressId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': ?natGatewayId,
      'publicIpAddressId': ?publicIpAddressId,
    };
  }

  factory NatGatewayPublicIpAssociationState.fromMap(Map<String, dynamic> map) {
    return NatGatewayPublicIpAssociationState(
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressId'] as String),
    );
  }
}

