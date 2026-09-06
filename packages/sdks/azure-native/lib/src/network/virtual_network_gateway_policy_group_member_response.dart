// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vpn Client Connection configuration PolicyGroup member
class VirtualNetworkGatewayPolicyGroupMemberResponse {
  /// The Vpn Policy member attribute type.
  final pulumi.Input<String?>? attributeType;
  /// The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  final pulumi.Input<String?>? attributeValue;
  /// Name of the VirtualNetworkGatewayPolicyGroupMember.
  final pulumi.Input<String?>? name;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupMemberResponse].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  /// [name] Name of the VirtualNetworkGatewayPolicyGroupMember.
  const VirtualNetworkGatewayPolicyGroupMemberResponse({
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

  factory VirtualNetworkGatewayPolicyGroupMemberResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroupMemberResponse(
      attributeType: (() { final guardedValue = map['attributeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeValue: (() { final guardedValue = map['attributeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
