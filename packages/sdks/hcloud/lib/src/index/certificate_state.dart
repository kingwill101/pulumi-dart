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

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
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

