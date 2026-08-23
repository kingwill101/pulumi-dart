// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayPolicyGroupPolicyMember {
  /// The name of the Virtual Network Gateway Policy Group Member.
  final pulumi.Input<String> name;
  /// The VPN Policy Member attribute type. Possible values are `AADGroupId`, `CertificateGroupId` and `RadiusAzureGroupId`.
  final pulumi.Input<String> type;
  /// The value of attribute that is used for this Virtual Network Gateway Policy Group Member.
  final pulumi.Input<String> value;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupPolicyMember].
  /// [name] The name of the Virtual Network Gateway Policy Group Member.
  /// [type] The VPN Policy Member attribute type. Possible values are `AADGroupId`, `CertificateGroupId` and `RadiusAzureGroupId`.
  /// [value] The value of attribute that is used for this Virtual Network Gateway Policy Group Member.
  const VirtualNetworkGatewayPolicyGroupPolicyMember({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory VirtualNetworkGatewayPolicyGroupPolicyMember.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroupPolicyMember(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
