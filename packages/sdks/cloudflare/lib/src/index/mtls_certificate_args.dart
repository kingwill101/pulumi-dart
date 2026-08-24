// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_mtls_certificate_mtls_certificate_args_doc}
/// The set of arguments for MtlsCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_mtls_certificate_mtls_certificate_args_doc}
class MtlsCertificateArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Indicates whether the certificate is a CA or leaf certificate.
  final pulumi.Input<bool> ca;
  /// The uploaded root CA certificate or certificate chain. Certificates must be provided in PEM format with the certificate matching the privateKey first in the chain.
  final pulumi.Input<String> certificates;
  /// Optional unique name for the certificate. Only used for human readability.
  final pulumi.Input<String?>? name;
  /// The private key for the certificate. This field is only needed for specific use cases such as using a custom certificate with Zero Trust's block page.
  final pulumi.Input<String?>? privateKey;

  /// Creates a new [MtlsCertificateArgs].
  /// [accountId] Identifier.
  /// [ca] Indicates whether the certificate is a CA or leaf certificate.
  /// [certificates] The uploaded root CA certificate or certificate chain. Certificates must be provided in PEM format with the certificate matching the privateKey first in the chain.
  /// [name] Optional unique name for the certificate. Only used for human readability.
  /// [privateKey] The private key for the certificate. This field is only needed for specific use cases such as using a custom certificate with Zero Trust's block page.
  const MtlsCertificateArgs({
    required this.accountId,
    required this.ca,
    required this.certificates,
    this.name,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'ca': ca,
      'certificates': certificates,
      'name': ?name,
      'privateKey': ?privateKey,
    };
  }

  factory MtlsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return MtlsCertificateArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      ca: pulumi.Input.fromValue(map['ca'] as bool),
      certificates: pulumi.Input.fromValue(map['certificates'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
