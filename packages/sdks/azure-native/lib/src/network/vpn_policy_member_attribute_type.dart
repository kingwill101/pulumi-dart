import 'package:pulumi/pulumi.dart' as pulumi;

/// The Vpn Policy member attribute type.
enum VpnPolicyMemberAttributeType implements pulumi.PulumiEnum<String> {
  valueCertificateGroupId("CertificateGroupId"),
  valueAADGroupId("AADGroupId"),
  valueRadiusAzureGroupId("RadiusAzureGroupId");

  const VpnPolicyMemberAttributeType(this.wireValue);
  @override
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
