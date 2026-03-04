/// Specifies workload certificate management.
enum MembershipSpecCertificateManagement {
  certificateManagementUnspecified("CERTIFICATE_MANAGEMENT_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const MembershipSpecCertificateManagement(this.wireValue);
  final String wireValue;

  static MembershipSpecCertificateManagement fromValue(String value) {
    for (final item in MembershipSpecCertificateManagement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MembershipSpecCertificateManagement value: $value',
    );
  }
}
