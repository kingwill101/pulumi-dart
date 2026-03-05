// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateResult {
  final String certificate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of ssl_certificate configured on bigip with full path
  final String name;

  /// Bigip partition in which ssl-certificate is configured
  final String partition;

  /// Creates a new [GetCertificateResult].
  /// [certificate] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of ssl_certificate configured on bigip with full path
  /// [partition] Bigip partition in which ssl-certificate is configured
  GetCertificateResult({
    required this.certificate,
    required this.id,
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'id': id,
      'name': name,
      'partition': partition,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificate: map['certificate'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      partition: map['partition'] as String,
    );
  }
}
