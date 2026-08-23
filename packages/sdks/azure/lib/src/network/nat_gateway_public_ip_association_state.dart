// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatGatewayPublicIpAssociation resources.
class NatGatewayPublicIpAssociationState {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natGatewayId;
  /// The ID of the Public IP Address which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `natGatewayId` references a NAT Gateway with SKU `Standard`, `publicIpAddressId` must reference a Public IP Address with SKU `Standard`. When `natGatewayId` references a NAT Gateway with SKU `StandardV2`, `publicIpAddressId` must reference a Public IP Address with SKU `StandardV2`.
  ///
  /// &gt; **Note:** When `publicIpAddressId` references an `IPv6` Public IP Address, `natGatewayId` must reference a NAT Gateway with SKU `StandardV2`, and `publicIpAddressId` must reference an `IPv6` Public IP Address with SKU `StandardV2`.
  final pulumi.Input<String>? publicIpAddressId;

  /// Creates a new [NatGatewayPublicIpAssociationState].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpAddressId] The ID of the Public IP Address which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  const NatGatewayPublicIpAssociationState({
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
