// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_index_certificate_certificate_args_doc}
class CertificateArgs {
  final pulumi.Input<String> certificate;
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> privateKey;

  /// Creates a new [CertificateArgs].
  /// [certificate] Required.
  /// [labels] Optional.
  /// [name] Optional.
  /// [privateKey] Required.
  CertificateArgs({
    required pulumi.Output<String> certificate,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    required pulumi.Output<String> privateKey,
  }) :
      certificate = pulumi.Input.asInput<String>(certificate),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateKey = pulumi.Input.asInput<String>(privateKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'labels': ?labels,
      'name': ?name,
      'privateKey': privateKey,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificate: pulumi.Output.create<String>(map['certificate'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateKey: pulumi.Output.create<String>(map['privateKey'] as String),
    );
  }
}

