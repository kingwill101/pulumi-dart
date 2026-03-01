// ignore_for_file: unused_element, unnecessary_cast


class GetCertificatesCertificate {
  final String certificate;
  final String created;
  final List<String> domainNames;
  final String fingerprint;
  final int id;
  final Map<String, String> labels;
  final String? name;
  final String notValidAfter;
  final String notValidBefore;
  final String type;

  /// Creates a new [GetCertificatesCertificate].
  /// [certificate] Required.
  /// [created] Required.
  /// [domainNames] Required.
  /// [fingerprint] Required.
  /// [id] Required.
  /// [labels] Required.
  /// [name] Optional.
  /// [notValidAfter] Required.
  /// [notValidBefore] Required.
  /// [type] Required.
  GetCertificatesCertificate({
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
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      certificate: map['certificate'] as String,
      created: map['created'] as String,
      domainNames: (map['domainNames'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      notValidAfter: map['notValidAfter'] as String,
      notValidBefore: map['notValidBefore'] as String,
      type: map['type'] as String,
    );
  }
}

