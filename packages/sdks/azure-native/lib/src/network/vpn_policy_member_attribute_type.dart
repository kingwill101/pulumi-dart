/// The Vpn Policy member attribute type.
enum VpnPolicyMemberAttributeType {
  valueCertificateGroupId("CertificateGroupId"),
  valueAADGroupId("AADGroupId"),
  valueRadiusAzureGroupId("RadiusAzureGroupId");

  const VpnPolicyMemberAttributeType(this.value);
  final String value;

  static VpnPolicyMemberAttributeType fromValue(String value) {
    for (final item in VpnPolicyMemberAttributeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnPolicyMemberAttributeType value: $value');
  }
}

