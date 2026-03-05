// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// Domains for which the certificate was issued.
  final List<String> domains;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The expiration date and time of the certificate.
  final String notAfter;

  /// The SHA1 fingerprint of the certificate.
  final String sha1Fingerprint;

  /// the current state of the certificate.
  final String state;

  /// The type of the certificate.
  final String type;

  /// The ID of the certificate.
  final String uuid;

  /// Creates a new [GetCertificateResult].
  /// [domains] Domains for which the certificate was issued.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [notAfter] The expiration date and time of the certificate.
  /// [sha1Fingerprint] The SHA1 fingerprint of the certificate.
  /// [state] the current state of the certificate.
  /// [type] The type of the certificate.
  /// [uuid] The ID of the certificate.
  GetCertificateResult({
    required this.domains,
    required this.id,
    required this.name,
    required this.notAfter,
    required this.sha1Fingerprint,
    required this.state,
    required this.type,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': domains,
      'id': id,
      'name': name,
      'notAfter': notAfter,
      'sha1Fingerprint': sha1Fingerprint,
      'state': state,
      'type': type,
      'uuid': uuid,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      domains: (map['domains'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      notAfter: map['notAfter'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
