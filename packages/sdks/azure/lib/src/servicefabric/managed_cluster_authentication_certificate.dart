// ignore_for_file: unused_element, unnecessary_cast


class ManagedClusterAuthenticationCertificate {
  /// The certificate's CN.
  final String? commonName;
  /// The thumbprint of the certificate.
  final String thumbprint;
  /// The type of the certificate. Can be `AdminClient` or `ReadOnlyClient`.
  final String type;

  /// Creates a new [ManagedClusterAuthenticationCertificate].
  /// [commonName] The certificate's CN.
  /// [thumbprint] The thumbprint of the certificate.
  /// [type] The type of the certificate. Can be `AdminClient` or `ReadOnlyClient`.
  ManagedClusterAuthenticationCertificate({
    this.commonName,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory ManagedClusterAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAuthenticationCertificate(
      commonName: map['commonName'] == null ? null : map['commonName'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

