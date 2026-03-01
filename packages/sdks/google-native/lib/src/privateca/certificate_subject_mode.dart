/// Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
enum CertificateSubjectMode {
  subjectRequestModeUnspecified("SUBJECT_REQUEST_MODE_UNSPECIFIED"),
  default_("DEFAULT"),
  reflectedSpiffe("REFLECTED_SPIFFE");

  const CertificateSubjectMode(this.value);
  final String value;

  static CertificateSubjectMode fromValue(String value) {
    for (final item in CertificateSubjectMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateSubjectMode value: $value');
  }
}

