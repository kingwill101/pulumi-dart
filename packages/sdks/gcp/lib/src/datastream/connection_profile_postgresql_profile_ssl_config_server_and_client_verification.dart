// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification {
  /// PEM-encoded server root CA certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> caCertificate;
  /// PEM-encoded certificate used by the source database to authenticate the
  /// client identity (i.e., the Datastream's identity). This certificate is
  /// signed by either a root certificate trusted by the server or one or more
  /// intermediate certificates (which is stored with the leaf certificate) to
  /// link to this certificate to the trusted root certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> clientCertificate;
  /// PEM-encoded private key associated with the client certificate.
  /// This value will be used during the SSL/TLS handshake, allowing
  /// the PostgreSQL server to authenticate the client's identity,
  /// i.e. identity of the stream.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> clientKey;

  /// Creates a new [ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification].
  /// [caCertificate] PEM-encoded server root CA certificate.
  /// [clientCertificate] PEM-encoded certificate used by the source database to authenticate the
  /// [clientKey] PEM-encoded private key associated with the client certificate.
  const ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
    };
  }

  factory ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification(
      caCertificate: pulumi.Input.fromValue(map['caCertificate'] as String),
      clientCertificate: pulumi.Input.fromValue(map['clientCertificate'] as String),
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
    );
  }
}
