// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VpnServerConfiguration PolicyGroup member
class VpnServerConfigurationPolicyGroupMemberResponse {
  /// The Vpn Policy member attribute type.
  final pulumi.Input<String>? attributeType;
  /// The value of Attribute used for this VpnServerConfigurationPolicyGroupMember.
  final pulumi.Input<String>? attributeValue;
  /// Name of the VpnServerConfigurationPolicyGroupMember.
  final pulumi.Input<String>? name;

  /// Creates a new [VpnServerConfigurationPolicyGroupMemberResponse].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VpnServerConfigurationPolicyGroupMember.
  /// [name] Name of the VpnServerConfigurationPolicyGroupMember.
  const VpnServerConfigurationPolicyGroupMemberResponse({
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

  factory VpnServerConfigurationPolicyGroupMemberResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroupMemberResponse(
      attributeType: (() { final guardedValue = map['attributeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeValue: (() { final guardedValue = map['attributeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

