/// Optional. Specifies the encoding format of each CertificateAuthority's CA certificate and CRLs. If this is omitted, CA certificates and CRLs will be published in PEM.
enum PublishingOptionsEncodingFormat {
  encodingFormatUnspecified("ENCODING_FORMAT_UNSPECIFIED"),
  pem("PEM"),
  der("DER");

  const PublishingOptionsEncodingFormat(this.wireValue);
  final String wireValue;

  static PublishingOptionsEncodingFormat fromValue(String value) {
    for (final item in PublishingOptionsEncodingFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublishingOptionsEncodingFormat value: $value');
  }
}

