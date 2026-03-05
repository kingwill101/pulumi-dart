enum CertificateType {
  letsEncrypt("lets_encrypt"),
  custom("custom");

  const CertificateType(this.wireValue);
  final String wireValue;

  static CertificateType fromValue(String value) {
    for (final item in CertificateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateType value: $value');
  }
}

