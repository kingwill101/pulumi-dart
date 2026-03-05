// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MySQL SSL configuration information.
class MysqlSslConfigResponseDatastreamV1alpha1 {
  /// Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  final pulumi.Input<String> caCertificate;
  /// Indicates whether the ca_certificate field is set.
  final pulumi.Input<bool> caCertificateSet;
  /// Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  final pulumi.Input<String> clientCertificate;
  /// Indicates whether the client_certificate field is set.
  final pulumi.Input<bool> clientCertificateSet;
  /// Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  final pulumi.Input<String> clientKey;
  /// Indicates whether the client_key field is set.
  final pulumi.Input<bool> clientKeySet;

  /// Creates a new [MysqlSslConfigResponseDatastreamV1alpha1].
  /// [caCertificate] Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [caCertificateSet] Indicates whether the ca_certificate field is set.
  /// [clientCertificate] Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.
  /// [clientCertificateSet] Indicates whether the client_certificate field is set.
  /// [clientKey] Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.
  /// [clientKeySet] Indicates whether the client_key field is set.
  MysqlSslConfigResponseDatastreamV1alpha1({
    required this.caCertificate,
    required this.caCertificateSet,
    required this.clientCertificate,
    required this.clientCertificateSet,
    required this.clientKey,
    required this.clientKeySet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'caCertificateSet': caCertificateSet,
      'clientCertificate': clientCertificate,
      'clientCertificateSet': clientCertificateSet,
      'clientKey': clientKey,
      'clientKeySet': clientKeySet,
    };
  }

  factory MysqlSslConfigResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlSslConfigResponseDatastreamV1alpha1(
      caCertificate: pulumi.Input.fromValue(map['caCertificate'] as String),
      caCertificateSet: pulumi.Input.fromValue(map['caCertificateSet'] as bool),
      clientCertificate: pulumi.Input.fromValue(map['clientCertificate'] as String),
      clientCertificateSet: pulumi.Input.fromValue(map['clientCertificateSet'] as bool),
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
      clientKeySet: pulumi.Input.fromValue(map['clientKeySet'] as bool),
    );
  }
}

