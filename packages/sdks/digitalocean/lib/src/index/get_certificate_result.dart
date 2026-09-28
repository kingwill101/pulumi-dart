// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// Domains for which the certificate was issued.
  final List<String>? domains;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The expiration date and time of the certificate.
  final String? notAfter;
  /// The SHA1 fingerprint of the certificate.
  final String? sha1Fingerprint;
  /// the current state of the certificate.
  final String? state;
  /// The type of the certificate.
  final String? type;
  /// The ID of the certificate.
  final String? uuid;

  /// Creates a new [GetCertificateResult].
  /// [domains] Domains for which the certificate was issued.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [notAfter] The expiration date and time of the certificate.
  /// [sha1Fingerprint] The SHA1 fingerprint of the certificate.
  /// [state] the current state of the certificate.
  /// [type] The type of the certificate.
  /// [uuid] The ID of the certificate.
  const GetCertificateResult({
    this.domains,
    this.id,
    this.name,
    this.notAfter,
    this.sha1Fingerprint,
    this.state,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'id': ?id,
      'name': ?name,
      'notAfter': ?notAfter,
      'sha1Fingerprint': ?sha1Fingerprint,
      'state': ?state,
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sha1Fingerprint: (() { final guardedValue = map['sha1Fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
