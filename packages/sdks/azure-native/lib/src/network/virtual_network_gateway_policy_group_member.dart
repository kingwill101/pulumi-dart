// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vpn Client Connection configuration PolicyGroup member
class VirtualNetworkGatewayPolicyGroupMember {
  /// The Vpn Policy member attribute type.
  final pulumi.Input<String>? attributeType;
  /// The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  final pulumi.Input<String>? attributeValue;
  /// Name of the VirtualNetworkGatewayPolicyGroupMember.
  final pulumi.Input<String>? name;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupMember].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  /// [name] Name of the VirtualNetworkGatewayPolicyGroupMember.
  VirtualNetworkGatewayPolicyGroupMember({
    this.attributeType,
    this.attributeValue,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeType': ?attributeType,
      'attributeValue': ?attributeValue,
      'name': ?name,
    };
  }

  factory VirtualNetworkGatewayPolicyGroupMember.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroupMember(
      attributeType: map['attributeType'] == null ? null : (map['attributeType'] as String).input(),
      attributeValue: map['attributeValue'] == null ? null : (map['attributeValue'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

