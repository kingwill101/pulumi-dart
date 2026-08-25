// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateSelfManaged {
  /// (Optional, Deprecated)
  /// The certificate chain in PEM-encoded form.
  /// Leaf certificate comes first, followed by intermediate ones if any.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// &gt; **Warning:** `certificatePem` is deprecated and will be removed in a future major release. Use `pemCertificate` instead.
  final pulumi.Input<String?>? certificatePem;
  /// The certificate chain in PEM-encoded form.
  /// Leaf certificate comes first, followed by intermediate ones if any.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? pemCertificate;
  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? pemPrivateKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `pemPrivateKey` or `pemPrivateKeyWo` can only be set.
  final pulumi.Input<String?>? pemPrivateKeyWo;
  /// Triggers update of `pemPrivateKeyWo` write-only. Increment this value when an update to `pemPrivateKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? pemPrivateKeyWoVersion;
  /// (Optional, Deprecated)
  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// &gt; **Warning:** `privateKeyPem` is deprecated and will be removed in a future major release. Use `pemPrivateKey` instead.
  final pulumi.Input<String?>? privateKeyPem;

  /// Creates a new [CertificateSelfManaged].
  /// [certificatePem] (Optional, Deprecated)
  /// [pemCertificate] The certificate chain in PEM-encoded form.
  /// [pemPrivateKey] The private key of the leaf certificate in PEM-encoded form.
  /// [pemPrivateKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [pemPrivateKeyWoVersion] Triggers update of `pemPrivateKeyWo` write-only. Increment this value when an update to `pemPrivateKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [privateKeyPem] (Optional, Deprecated)
  const CertificateSelfManaged({
    this.certificatePem,
    this.pemCertificate,
    this.pemPrivateKey,
    this.pemPrivateKeyWo,
    this.pemPrivateKeyWoVersion,
    this.privateKeyPem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePem': ?certificatePem,
      'pemCertificate': ?pemCertificate,
      'pemPrivateKey': ?pemPrivateKey,
      'pemPrivateKeyWo': ?pemPrivateKeyWo,
      'pemPrivateKeyWoVersion': ?pemPrivateKeyWoVersion,
      'privateKeyPem': ?privateKeyPem,
    };
  }

  factory CertificateSelfManaged.fromMap(Map<String, dynamic> map) {
    return CertificateSelfManaged(
      certificatePem: (() { final guardedValue = map['certificatePem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pemCertificate: (() { final guardedValue = map['pemCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pemPrivateKey: (() { final guardedValue = map['pemPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pemPrivateKeyWo: (() { final guardedValue = map['pemPrivateKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pemPrivateKeyWoVersion: (() { final guardedValue = map['pemPrivateKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPem: (() { final guardedValue = map['privateKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
