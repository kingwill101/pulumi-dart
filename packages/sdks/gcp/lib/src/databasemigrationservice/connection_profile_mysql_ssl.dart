// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileMysqlSsl {
  /// Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// The replica will use this certificate to verify it's connecting to the right host.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? caCertificate;
  /// Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
  /// If this field is used then the 'clientKey' field is mandatory
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientCertificate;
  /// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// If this field is used then the 'clientCertificate' field is mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientKey;
  /// (Output)
  /// The current connection profile state.
  final pulumi.Input<String?>? type;

  /// Creates a new [ConnectionProfileMysqlSsl].
  /// [caCertificate] Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate.
  /// [clientCertificate] Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.
  /// [clientKey] Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// [type] (Output)
  const ConnectionProfileMysqlSsl({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'type': ?type,
    };
  }

  factory ConnectionProfileMysqlSsl.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMysqlSsl(
      caCertificate: (() { final guardedValue = map['caCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
