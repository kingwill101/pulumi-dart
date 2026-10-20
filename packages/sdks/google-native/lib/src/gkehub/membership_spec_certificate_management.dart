import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies workload certificate management.
enum MembershipSpecCertificateManagement implements pulumi.PulumiEnum<String> {
  certificateManagementUnspecified("CERTIFICATE_MANAGEMENT_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const MembershipSpecCertificateManagement(this.wireValue);
  @override
  final String wireValue;

  static MembershipSpecCertificateManagement fromValue(String value) {
    for (final item in MembershipSpecCertificateManagement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MembershipSpecCertificateManagement value: $value');
  }
}
