// ignore_for_file: unused_element, unnecessary_cast


class GoogleCloudApigeeV1TlsInfoCommonName {
  /// The TLS Common Name string of the certificate.
  final String? value;
  /// Indicates whether the cert should be matched against as a wildcard cert.
  final bool? wildcardMatch;

  /// Creates a new [GoogleCloudApigeeV1TlsInfoCommonName].
  /// [value] The TLS Common Name string of the certificate.
  /// [wildcardMatch] Indicates whether the cert should be matched against as a wildcard cert.
  GoogleCloudApigeeV1TlsInfoCommonName({
    this.value,
    this.wildcardMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'wildcardMatch': ?wildcardMatch,
    };
  }

  factory GoogleCloudApigeeV1TlsInfoCommonName.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TlsInfoCommonName(
      value: map['value'] == null ? null : map['value'] as String,
      wildcardMatch: map['wildcardMatch'] == null ? null : map['wildcardMatch'] as bool,
    );
  }
}

