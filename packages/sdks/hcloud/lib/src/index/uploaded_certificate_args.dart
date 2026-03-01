// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_uploaded_certificate_uploaded_certificate_args_doc}
/// The set of arguments for UploadedCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_uploaded_certificate_uploaded_certificate_args_doc}
class UploadedCertificateArgs {
  /// PEM encoded TLS certificate.
  final pulumi.Input<String> certificate;
  /// User-defined labels (key-value pairs) the
  /// certificate should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Certificate.
  final pulumi.Input<String>? name;
  /// PEM encoded private key belonging to the certificate.
  final pulumi.Input<String> privateKey;

  /// Creates a new [UploadedCertificateArgs].
  /// [certificate] PEM encoded TLS certificate.
  /// [labels] User-defined labels (key-value pairs) the
  /// [name] Name of the Certificate.
  /// [privateKey] PEM encoded private key belonging to the certificate.
  UploadedCertificateArgs({
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

  factory UploadedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return UploadedCertificateArgs(
      certificate: pulumi.Output.create<String>(map['certificate'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateKey: pulumi.Output.create<String>(map['privateKey'] as String),
    );
  }
}

