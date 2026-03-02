// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatGatewayPublicIpPrefixAssociation resources.
class NatGatewayPublicIpPrefixAssociationState {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natGatewayId;
  /// The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpPrefixId;

  /// Creates a new [NatGatewayPublicIpPrefixAssociationState].
  /// [natGatewayId] The ID of the NAT Gateway. Changing this forces a new resource to be created.
  /// [publicIpPrefixId] The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created.
  NatGatewayPublicIpPrefixAssociationState({
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
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      publicIpPrefixId: map['publicIpPrefixId'] == null ? null : (map['publicIpPrefixId'] as String).input(),
    );
  }
}

