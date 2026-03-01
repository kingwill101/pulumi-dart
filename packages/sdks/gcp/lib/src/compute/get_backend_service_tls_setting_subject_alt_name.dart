// ignore_for_file: unused_element, unnecessary_cast


class GetBackendServiceTlsSettingSubjectAltName {
  /// The SAN specified as a DNS Name.
  final String dnsName;
  /// The SAN specified as a URI.
  final String uniformResourceIdentifier;

  /// Creates a new [GetBackendServiceTlsSettingSubjectAltName].
  /// [dnsName] The SAN specified as a DNS Name.
  /// [uniformResourceIdentifier] The SAN specified as a URI.
  GetBackendServiceTlsSettingSubjectAltName({
    required this.dnsName,
    required this.uniformResourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': dnsName,
      'uniformResourceIdentifier': uniformResourceIdentifier,
    };
  }

  factory GetBackendServiceTlsSettingSubjectAltName.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceTlsSettingSubjectAltName(
      dnsName: map['dnsName'] as String,
      uniformResourceIdentifier: map['uniformResourceIdentifier'] as String,
    );
  }
}

