// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] The paths to the mounted TLS Certificates and private key. The paths to the mounted TLS Certificates and private key.
class TlsCertificatePathsResponse {
  /// The path to the file holding the client or server TLS certificate to use.
  final pulumi.Input<String> certificatePath;
  /// The path to the file holding the client or server private key.
  final pulumi.Input<String> privateKeyPath;

  /// Creates a new [TlsCertificatePathsResponse].
  /// [certificatePath] The path to the file holding the client or server TLS certificate to use.
  /// [privateKeyPath] The path to the file holding the client or server private key.
  const TlsCertificatePathsResponse({
    required this.certificatePath,
    required this.privateKeyPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePath': certificatePath,
      'privateKeyPath': privateKeyPath,
    };
  }

  factory TlsCertificatePathsResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertificatePathsResponse(
      certificatePath: pulumi.Input.fromValue(map['certificatePath'] as String),
      privateKeyPath: pulumi.Input.fromValue(map['privateKeyPath'] as String),
    );
  }
}

