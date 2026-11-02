// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// (string) PEM encoded TLS certificate.
  final String? certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  final String? created;
  /// (list) Domains and subdomains covered by the certificate.
  final List<String>? domainNames;
  /// (string) Fingerprint of the certificate.
  final String? fingerprint;
  /// (int) Unique ID of the certificate.
  final int? id;
  /// (map) User-defined labels (key-value pairs) assigned to the certificate.
  final Map<String, String>? labels;
  /// (string) Name of the Certificate.
  final String? name;
  /// (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  final String? notValidAfter;
  /// (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  final String? notValidBefore;
  final String? type;
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
  /// [type] Optional.
  /// [withSelector] Optional.
  const GetCertificateResult({
    this.certificate,
    this.created,
    this.domainNames,
    this.fingerprint,
    this.id,
    this.labels,
    this.name,
    this.notValidAfter,
    this.notValidBefore,
    this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'created': ?created,
      'domainNames': ?domainNames,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'notValidAfter': ?notValidAfter,
      'notValidBefore': ?notValidBefore,
      'type': ?type,
      'withSelector': ?withSelector,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainNames: (() { final guardedValue = map['domainNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notValidAfter: (() { final guardedValue = map['notValidAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notValidBefore: (() { final guardedValue = map['notValidBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
