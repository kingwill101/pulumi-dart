// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] The paths to the mounted TLS Certificates and private key. The paths to the mounted TLS Certificates and private key.
class TlsCertificatePaths {
  /// The path to the file holding the client or server TLS certificate to use.
  final pulumi.Input<String>? certificatePath;
  /// The path to the file holding the client or server private key.
  final pulumi.Input<String>? privateKeyPath;

  /// Creates a new [TlsCertificatePaths].
  /// [certificatePath] The path to the file holding the client or server TLS certificate to use.
  /// [privateKeyPath] The path to the file holding the client or server private key.
  TlsCertificatePaths({
    this.certificatePath,
    this.privateKeyPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePath': ?certificatePath,
      'privateKeyPath': ?privateKeyPath,
    };
  }

  factory TlsCertificatePaths.fromMap(Map<String, dynamic> map) {
    return TlsCertificatePaths(
      certificatePath: map['certificatePath'] == null ? null : (map['certificatePath']! as String).input(),
      privateKeyPath: map['privateKeyPath'] == null ? null : (map['privateKeyPath']! as String).input(),
    );
  }
}

