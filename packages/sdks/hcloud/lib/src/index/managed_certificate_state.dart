// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedCertificate resources.
class ManagedCertificateState {
  /// (string) PEM encoded TLS certificate.
  final pulumi.Input<String>? certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  final pulumi.Input<String>? created;
  /// Domain names for which a certificate
  /// should be obtained.
  final pulumi.Input<List<String>>? domainNames;
  /// (string) Fingerprint of the certificate.
  final pulumi.Input<String>? fingerprint;
  /// User-defined labels (key-value pairs) the
  /// certificate should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Certificate.
  final pulumi.Input<String>? name;
  /// (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  final pulumi.Input<String>? notValidAfter;
  /// (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  final pulumi.Input<String>? notValidBefore;
  final pulumi.Input<String>? type;

  /// Creates a new [ManagedCertificateState].
  /// [certificate] (string) PEM encoded TLS certificate.
  /// [created] (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  /// [domainNames] Domain names for which a certificate
  /// [fingerprint] (string) Fingerprint of the certificate.
  /// [labels] User-defined labels (key-value pairs) the
  /// [name] Name of the Certificate.
  /// [notValidAfter] (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  /// [notValidBefore] (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  /// [type] Optional.
  ManagedCertificateState({
    this.certificate,
    this.created,
    this.domainNames,
    this.fingerprint,
    this.labels,
    this.name,
    this.notValidAfter,
    this.notValidBefore,
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
      'type': ?type,
    };
  }

  factory ManagedCertificateState.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateState(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      created: map['created'] == null ? null : (map['created'] as String).input(),
      domainNames: map['domainNames'] == null ? null : ((map['domainNames'] as List).cast<String>()).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notValidAfter: map['notValidAfter'] == null ? null : (map['notValidAfter'] as String).input(),
      notValidBefore: map['notValidBefore'] == null ? null : (map['notValidBefore'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

