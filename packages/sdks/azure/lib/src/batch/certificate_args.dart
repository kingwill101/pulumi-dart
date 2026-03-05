// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_batch_certificate_certificate_args_doc}
class CertificateArgs {
  /// Specifies the name of the Batch account. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// The base64-encoded contents of the certificate.
  final pulumi.Input<String> certificate;
  /// The format of the certificate. Possible values are `Cer` or `Pfx`.
  final pulumi.Input<String> format;
  /// The password to access the certificate's private key. This can only be specified when `format` is `Pfx`.
  final pulumi.Input<String>? password;
  /// The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The thumbprint of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> thumbprint;
  /// The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created.
  final pulumi.Input<String> thumbprintAlgorithm;

  /// Creates a new [CertificateArgs].
  /// [accountName] Specifies the name of the Batch account. Changing this forces a new resource to be created.
  /// [certificate] The base64-encoded contents of the certificate.
  /// [format] The format of the certificate. Possible values are `Cer` or `Pfx`.
  /// [password] The password to access the certificate's private key. This can only be specified when `format` is `Pfx`.
  /// [resourceGroupName] The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  /// [thumbprint] The thumbprint of the certificate. Changing this forces a new resource to be created.
  /// [thumbprintAlgorithm] The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created.
  CertificateArgs({
    required this.accountName,
    required this.certificate,
    required this.format,
    this.password,
    required this.resourceGroupName,
    required this.thumbprint,
    required this.thumbprintAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'certificate': certificate,
      'format': format,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'thumbprint': thumbprint,
      'thumbprintAlgorithm': thumbprintAlgorithm,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      thumbprintAlgorithm: pulumi.Input.fromValue(map['thumbprintAlgorithm'] as String),
    );
  }
}

