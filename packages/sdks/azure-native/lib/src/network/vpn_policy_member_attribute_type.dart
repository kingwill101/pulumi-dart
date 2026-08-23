/// The Vpn Policy member attribute type.
enum VpnPolicyMemberAttributeType {
  valueCertificateGroupId("CertificateGroupId"),
  valueAADGroupId("AADGroupId"),
  valueRadiusAzureGroupId("RadiusAzureGroupId");

  const VpnPolicyMemberAttributeType(this.wireValue);
  final String wireValue;

  static VpnPolicyMemberAttributeType fromValue(String value) {
    for (final item in VpnPolicyMemberAttributeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnPolicyMemberAttributeType value: $value');
  }
}
