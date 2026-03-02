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
    required this.certificate,
    this.labels,
    this.name,
    required this.privateKey,
  });

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
      certificate: (map['certificate'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateKey: (map['privateKey'] as String).input(),
    );
  }
}

