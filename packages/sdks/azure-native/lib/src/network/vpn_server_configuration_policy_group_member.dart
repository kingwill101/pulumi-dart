// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VpnServerConfiguration PolicyGroup member
class VpnServerConfigurationPolicyGroupMember {
  /// The Vpn Policy member attribute type.
  final pulumi.Input<String>? attributeType;
  /// The value of Attribute used for this VpnServerConfigurationPolicyGroupMember.
  final pulumi.Input<String>? attributeValue;
  /// Name of the VpnServerConfigurationPolicyGroupMember.
  final pulumi.Input<String>? name;

  /// Creates a new [VpnServerConfigurationPolicyGroupMember].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VpnServerConfigurationPolicyGroupMember.
  /// [name] Name of the VpnServerConfigurationPolicyGroupMember.
  VpnServerConfigurationPolicyGroupMember({
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

  factory VpnServerConfigurationPolicyGroupMember.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroupMember(
      attributeType: map['attributeType'] == null ? null : (map['attributeType']! as String).input(),
      attributeValue: map['attributeValue'] == null ? null : (map['attributeValue']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

