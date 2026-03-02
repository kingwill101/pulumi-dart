// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle SSL configuration information.
class OracleSslConfig {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final pulumi.Input<String>? caCertificate;

  /// Creates a new [OracleSslConfig].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  OracleSslConfig({
    this.caCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
    };
  }

  factory OracleSslConfig.fromMap(Map<String, dynamic> map) {
    return OracleSslConfig(
      caCertificate: map['caCertificate'] == null ? null : (map['caCertificate'] as String).input(),
    );
  }
}

