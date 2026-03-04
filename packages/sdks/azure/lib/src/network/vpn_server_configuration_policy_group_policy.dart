// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnServerConfigurationPolicyGroupPolicy {
  /// The name of the VPN Server Configuration Policy member.
  final pulumi.Input<String> name;

  /// The attribute type of the VPN Server Configuration Policy member. Possible values are `AADGroupId`, `CertificateGroupId` and `RadiusAzureGroupId`.
  final pulumi.Input<String> type;

  /// The value of the attribute that is used for the VPN Server Configuration Policy member.
  final pulumi.Input<String> value;

  /// Creates a new [VpnServerConfigurationPolicyGroupPolicy].
  /// [name] The name of the VPN Server Configuration Policy member.
  /// [type] The attribute type of the VPN Server Configuration Policy member. Possible values are `AADGroupId`, `CertificateGroupId` and `RadiusAzureGroupId`.
  /// [value] The value of the attribute that is used for the VPN Server Configuration Policy member.
  VpnServerConfigurationPolicyGroupPolicy({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type, 'value': value};
  }

  factory VpnServerConfigurationPolicyGroupPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpnServerConfigurationPolicyGroupPolicy(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
