// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatesCertificate {
  final pulumi.Input<String> certificate;
  final pulumi.Input<String> created;
  final pulumi.Input<List<String>> domainNames;
  final pulumi.Input<String> fingerprint;
  final pulumi.Input<int> id;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> notValidAfter;
  final pulumi.Input<String> notValidBefore;
  final pulumi.Input<String> type;

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
  const GetCertificatesCertificate({
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
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notValidAfter: pulumi.Input.fromValue(map['notValidAfter'] as String),
      notValidBefore: pulumi.Input.fromValue(map['notValidBefore'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

