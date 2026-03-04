// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MySQL SSL configuration information.
class MysqlSslConfig {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final pulumi.Input<String>? caCertificate;

  /// Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  final pulumi.Input<String>? clientCertificate;

  /// Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  final pulumi.Input<String>? clientKey;

  /// Creates a new [MysqlSslConfig].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [clientCertificate] Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  /// [clientKey] Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  MysqlSslConfig({this.caCertificate, this.clientCertificate, this.clientKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
    };
  }

  factory MysqlSslConfig.fromMap(Map<String, dynamic> map) {
    return MysqlSslConfig(
      caCertificate: (() {
        final guardedValue = map['caCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificate: (() {
        final guardedValue = map['clientCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientKey: (() {
        final guardedValue = map['clientKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
