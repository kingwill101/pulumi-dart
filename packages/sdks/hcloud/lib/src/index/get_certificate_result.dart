// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// (string) PEM encoded TLS certificate.
  final String certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  final String created;
  /// (list) Domains and subdomains covered by the certificate.
  final List<String> domainNames;
  /// (string) Fingerprint of the certificate.
  final String fingerprint;
  /// (int) Unique ID of the certificate.
  final int id;
  /// (map) User-defined labels (key-value pairs) assigned to the certificate.
  final Map<String, String> labels;
  /// (string) Name of the Certificate.
  final String? name;
  /// (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  final String notValidAfter;
  /// (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  final String notValidBefore;
  final String type;
  final String? withSelector;

  /// Creates a new [GetCertificateResult].
  /// [certificate] (string) PEM encoded TLS certificate.
  /// [created] (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  /// [domainNames] (list) Domains and subdomains covered by the certificate.
  /// [fingerprint] (string) Fingerprint of the certificate.
  /// [id] (int) Unique ID of the certificate.
  /// [labels] (map) User-defined labels (key-value pairs) assigned to the certificate.
  /// [name] (string) Name of the Certificate.
  /// [notValidAfter] (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  /// [notValidBefore] (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  /// [type] Required.
  /// [withSelector] Optional.
  GetCertificateResult({
    required this.certificate,
    required this.created,
    required this.domainNames,
    required this.fingerprint,
    required this.id,
    required this.labels,
    this.name,
    required this.notValidAfter,
    required this.notValidBefore,
    required this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'created': created,
      'domainNames': domainNames,
      'fingerprint': fingerprint,
      'id': id,
      'labels': labels,
      'name': ?name,
      'notValidAfter': notValidAfter,
      'notValidBefore': notValidBefore,
      'type': type,
      'withSelector': ?withSelector,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificate: map['certificate'] as String,
      created: map['created'] as String,
      domainNames: (map['domainNames'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notValidAfter: map['notValidAfter'] as String,
      notValidBefore: map['notValidBefore'] as String,
      type: map['type'] as String,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

