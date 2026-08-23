// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatGatewayPublicIpPrefixAssociation resources.
class NatGatewayPublicIpPrefixAssociationState {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natGatewayId;
  /// The ID of the Public IP Prefix which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `natGatewayId` references a NAT Gateway with SKU `Standard`, `publicIpPrefixId` must reference a Public IP Prefix with SKU `Standard`. When `natGatewayId` references a NAT Gateway with SKU `StandardV2`, `publicIpPrefixId` must reference a Public IP Prefix with SKU `StandardV2`.
  ///
  /// &gt; **Note:** When `publicIpPrefixId` references an `IPv6` Public IP Prefix, `natGatewayId` must reference a NAT Gateway with SKU `StandardV2`, and `publicIpPrefixId` must reference an `IPv6` Public IP Prefix with SKU `StandardV2`.
  final pulumi.Input<String>? publicIpPrefixId;

  /// Creates a new [NatGatewayPublicIpPrefixAssociationState].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpPrefixId] The ID of the Public IP Prefix which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  const NatGatewayPublicIpPrefixAssociationState({
    this.natGatewayId,
    this.publicIpPrefixId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayId': ?natGatewayId,
      'publicIpPrefixId': ?publicIpPrefixId,
    };
  }

  factory NatGatewayPublicIpPrefixAssociationState.fromMap(Map<String, dynamic> map) {
    return NatGatewayPublicIpPrefixAssociationState(
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpPrefixId: (() { final guardedValue = map['publicIpPrefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
