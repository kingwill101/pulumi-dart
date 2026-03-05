/// The mode of the certificate.
enum DomainMappingSpecCertificateMode {
  certificateModeUnspecified("CERTIFICATE_MODE_UNSPECIFIED"),
  none("NONE"),
  automatic("AUTOMATIC");

  const DomainMappingSpecCertificateMode(this.wireValue);
  final String wireValue;

  static DomainMappingSpecCertificateMode fromValue(String value) {
    for (final item in DomainMappingSpecCertificateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainMappingSpecCertificateMode value: $value');
  }
}

