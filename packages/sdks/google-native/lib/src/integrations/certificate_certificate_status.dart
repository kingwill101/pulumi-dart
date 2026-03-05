/// Status of the certificate
enum CertificateCertificateStatus {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  expired("EXPIRED");

  const CertificateCertificateStatus(this.wireValue);
  final String wireValue;

  static CertificateCertificateStatus fromValue(String value) {
    for (final item in CertificateCertificateStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateCertificateStatus value: $value');
  }
}

