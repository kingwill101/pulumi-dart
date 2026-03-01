// ignore_for_file: unused_element, unnecessary_cast


class GoogleCloudApigeeV1TlsInfoCommonNameResponse {
  /// The TLS Common Name string of the certificate.
  final String value;
  /// Indicates whether the cert should be matched against as a wildcard cert.
  final bool wildcardMatch;

  /// Creates a new [GoogleCloudApigeeV1TlsInfoCommonNameResponse].
  /// [value] The TLS Common Name string of the certificate.
  /// [wildcardMatch] Indicates whether the cert should be matched against as a wildcard cert.
  GoogleCloudApigeeV1TlsInfoCommonNameResponse({
    required this.value,
    required this.wildcardMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'wildcardMatch': wildcardMatch,
    };
  }

  factory GoogleCloudApigeeV1TlsInfoCommonNameResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TlsInfoCommonNameResponse(
      value: map['value'] as String,
      wildcardMatch: map['wildcardMatch'] as bool,
    );
  }
}

