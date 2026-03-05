/// Required. Immutable. The Type of this CertificateAuthority.
enum CertificateAuthorityType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  selfSigned("SELF_SIGNED"),
  subordinate("SUBORDINATE");

  const CertificateAuthorityType(this.wireValue);
  final String wireValue;

  static CertificateAuthorityType fromValue(String value) {
    for (final item in CertificateAuthorityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateAuthorityType value: $value');
  }
}

