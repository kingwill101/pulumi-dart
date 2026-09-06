// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vpn Client Connection configuration PolicyGroup member
class VirtualNetworkGatewayPolicyGroupMember {
  /// The Vpn Policy member attribute type.
  final pulumi.Input<dynamic>? attributeType;
  /// The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  final pulumi.Input<String?>? attributeValue;
  /// Name of the VirtualNetworkGatewayPolicyGroupMember.
  final pulumi.Input<String?>? name;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupMember].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  /// [name] Name of the VirtualNetworkGatewayPolicyGroupMember.
  const VirtualNetworkGatewayPolicyGroupMember({
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
      attributeType: (() { final guardedValue = map['attributeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      attributeValue: (() { final guardedValue = map['attributeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
