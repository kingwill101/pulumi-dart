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
    this.natGatewayId,
    this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': ?natGatewayId,
      'publicIpAddressId': ?publicIpAddressId,
    };
  }

  factory NatGatewayPublicIpAssociationState.fromMap(Map<String, dynamic> map) {
    return NatGatewayPublicIpAssociationState(
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

