// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  final pulumi.Input<String>? certificate;
  final pulumi.Input<String>? created;
  final pulumi.Input<List<String>>? domainNames;
  final pulumi.Input<String>? fingerprint;
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? notValidAfter;
  final pulumi.Input<String>? notValidBefore;
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? type;

  /// Creates a new [CertificateState].
  /// [certificate] Optional.
  /// [created] Optional.
  /// [domainNames] Optional.
  /// [fingerprint] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [notValidAfter] Optional.
  /// [notValidBefore] Optional.
  /// [privateKey] Optional.
  /// [type] Optional.
  CertificateState({
    this.certificate,
    this.created,
    this.domainNames,
    this.fingerprint,
    this.labels,
    this.name,
    this.notValidAfter,
    this.notValidBefore,
    this.privateKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'created': ?created,
      'domainNames': ?domainNames,
      'fingerprint': ?fingerprint,
      'labels': ?labels,
      'name': ?name,
      'notValidAfter': ?notValidAfter,
      'notValidBefore': ?notValidBefore,
      'privateKey': ?privateKey,
      'type': ?type,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      created: map['created'] == null ? null : (map['created'] as String).input(),
      domainNames: map['domainNames'] == null ? null : ((map['domainNames'] as List).cast<String>()).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notValidAfter: map['notValidAfter'] == null ? null : (map['notValidAfter'] as String).input(),
      notValidBefore: map['notValidBefore'] == null ? null : (map['notValidBefore'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

