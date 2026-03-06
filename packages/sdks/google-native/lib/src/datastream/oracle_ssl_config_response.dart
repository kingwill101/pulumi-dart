// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle SSL configuration information.
class OracleSslConfigResponse {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final pulumi.Input<String> caCertificate;
  /// Indicates whether the ca_certificate field has been set for this Connection-Profile.
  final pulumi.Input<bool> caCertificateSet;

  /// Creates a new [OracleSslConfigResponse].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [caCertificateSet] Indicates whether the ca_certificate field has been set for this Connection-Profile.
  const OracleSslConfigResponse({
    required this.caCertificate,
    required this.caCertificateSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'caCertificateSet': caCertificateSet,
    };
  }

  factory OracleSslConfigResponse.fromMap(Map<String, dynamic> map) {
    return OracleSslConfigResponse(
      caCertificate: pulumi.Input.fromValue(map['caCertificate'] as String),
      caCertificateSet: pulumi.Input.fromValue(map['caCertificateSet'] as bool),
    );
  }
}

