// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Specifies the name of the Batch account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The base64-encoded contents of the certificate.
  final pulumi.Input<String>? certificate;
  /// The format of the certificate. Possible values are `Cer` or `Pfx`.
  final pulumi.Input<String>? format;
  /// The generated name of the certificate.
  final pulumi.Input<String>? name;
  /// The password to access the certificate's private key. This can only be specified when `format` is `Pfx`.
  final pulumi.Input<String>? password;
  /// The public key of the certificate.
  final pulumi.Input<String>? publicData;
  /// The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The thumbprint of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? thumbprint;
  /// The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? thumbprintAlgorithm;

  /// Creates a new [CertificateState].
  /// [accountName] Specifies the name of the Batch account. Changing this forces a new resource to be created.
  /// [certificate] The base64-encoded contents of the certificate.
  /// [format] The format of the certificate. Possible values are `Cer` or `Pfx`.
  /// [name] The generated name of the certificate.
  /// [password] The password to access the certificate's private key. This can only be specified when `format` is `Pfx`.
  /// [publicData] The public key of the certificate.
  /// [resourceGroupName] The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  /// [thumbprint] The thumbprint of the certificate. Changing this forces a new resource to be created.
  /// [thumbprintAlgorithm] The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created.
  CertificateState({
    this.accountName,
    this.certificate,
    this.format,
    this.name,
    this.password,
    this.publicData,
    this.resourceGroupName,
    this.thumbprint,
    this.thumbprintAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'certificate': ?certificate,
      'format': ?format,
      'name': ?name,
      'password': ?password,
      'publicData': ?publicData,
      'resourceGroupName': ?resourceGroupName,
      'thumbprint': ?thumbprint,
      'thumbprintAlgorithm': ?thumbprintAlgorithm,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      publicData: map['publicData'] == null ? null : (map['publicData'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      thumbprintAlgorithm: map['thumbprintAlgorithm'] == null ? null : (map['thumbprintAlgorithm'] as String).input(),
    );
  }
}

