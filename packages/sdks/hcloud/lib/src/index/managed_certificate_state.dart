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
  const ManagedCertificateState({
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
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainNames: (() { final guardedValue = map['domainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notValidAfter: (() { final guardedValue = map['notValidAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notValidBefore: (() { final guardedValue = map['notValidBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
