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
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? format,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? publicData,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? thumbprint,
    pulumi.Output<String>? thumbprintAlgorithm,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      format = pulumi.Input.asOptionalInput<String>(format),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      publicData = pulumi.Input.asOptionalInput<String>(publicData),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint),
      thumbprintAlgorithm = pulumi.Input.asOptionalInput<String>(thumbprintAlgorithm);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      publicData: map['publicData'] == null ? null : pulumi.Output.create<String>(map['publicData'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
      thumbprintAlgorithm: map['thumbprintAlgorithm'] == null ? null : pulumi.Output.create<String>(map['thumbprintAlgorithm'] as String),
    );
  }
}

