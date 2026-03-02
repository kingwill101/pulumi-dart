// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UploadedCertificate resources.
class UploadedCertificateState {
  /// PEM encoded TLS certificate.
  final pulumi.Input<String>? certificate;
  /// (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  final pulumi.Input<String>? created;
  /// (list) Domains and subdomains covered by the certificate.
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
  /// PEM encoded private key belonging to the certificate.
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? type;

  /// Creates a new [UploadedCertificateState].
  /// [certificate] PEM encoded TLS certificate.
  /// [created] (string) Point in time when the Certificate was created at Hetzner Cloud (in ISO-8601 format).
  /// [domainNames] (list) Domains and subdomains covered by the certificate.
  /// [fingerprint] (string) Fingerprint of the certificate.
  /// [labels] User-defined labels (key-value pairs) the
  /// [name] Name of the Certificate.
  /// [notValidAfter] (string) Point in time when the Certificate stops being valid (in ISO-8601 format).
  /// [notValidBefore] (string) Point in time when the Certificate becomes valid (in ISO-8601 format).
  /// [privateKey] PEM encoded private key belonging to the certificate.
  /// [type] Optional.
  UploadedCertificateState({
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

  factory UploadedCertificateState.fromMap(Map<String, dynamic> map) {
    return UploadedCertificateState(
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      domainNames: map['domainNames'] == null ? null : ((map['domainNames']! as List).cast<String>()).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notValidAfter: map['notValidAfter'] == null ? null : (map['notValidAfter']! as String).input(),
      notValidBefore: map['notValidBefore'] == null ? null : (map['notValidBefore']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

