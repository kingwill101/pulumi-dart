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
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? created,
    pulumi.Output<List<String>>? domainNames,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notValidAfter,
    pulumi.Output<String>? notValidBefore,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? type,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      created = pulumi.Input.asOptionalInput<String>(created),
      domainNames = pulumi.Input.asOptionalInput<List<String>>(domainNames),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      notValidAfter = pulumi.Input.asOptionalInput<String>(notValidAfter),
      notValidBefore = pulumi.Input.asOptionalInput<String>(notValidBefore),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      domainNames: map['domainNames'] == null ? null : pulumi.Output.create<List<String>>((map['domainNames'] as List).cast<String>()),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notValidAfter: map['notValidAfter'] == null ? null : pulumi.Output.create<String>(map['notValidAfter'] as String),
      notValidBefore: map['notValidBefore'] == null ? null : pulumi.Output.create<String>(map['notValidBefore'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

