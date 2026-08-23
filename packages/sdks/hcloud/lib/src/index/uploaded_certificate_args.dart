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
  const UploadedCertificateArgs({
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

  factory UploadedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return UploadedCertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}
