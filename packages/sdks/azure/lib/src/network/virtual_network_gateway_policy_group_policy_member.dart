// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayPolicyGroupPolicyMember {
  /// The name of the Virtual Network Gateway Policy Group Member.
  final String name;
  /// The VPN Policy Member attribute type. Possible values are `AADGroupId`, `CertificateGroupId` and `RadiusAzureGroupId`.
  final String type;
  /// The value of attribute that is used for this Virtual Network Gateway Policy Group Member.
  final String value;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupPolicyMember].
  /// [name] The name of the Virtual Network Gateway Policy Group Member.
  /// [type] The VPN Policy Member attribute type. Possible values are `AADGroupId`, `CertificateGroupId` and `RadiusAzureGroupId`.
  /// [value] The value of attribute that is used for this Virtual Network Gateway Policy Group Member.
  VirtualNetworkGatewayPolicyGroupPolicyMember({
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
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

