// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileMysqlProfileSslConfig {
  /// PEM-encoded certificate of the CA that signed the source database
  /// server's certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? caCertificate;
  /// (Output)
  /// Indicates whether the clientKey field is set.
  final pulumi.Input<bool>? caCertificateSet;
  /// PEM-encoded certificate that will be used by the replica to
  /// authenticate against the source database server. If this field
  /// is used then the 'clientKey' and the 'caCertificate' fields are
  /// mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clientCertificate;
  /// (Output)
  /// Indicates whether the clientCertificate field is set.
  final pulumi.Input<bool>? clientCertificateSet;
  /// PEM-encoded private key associated with the Client Certificate.
  /// If this field is used then the 'client_certificate' and the
  /// 'ca_certificate' fields are mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clientKey;
  /// (Output)
  /// Indicates whether the clientKey field is set.
  final pulumi.Input<bool>? clientKeySet;

  /// Creates a new [ConnectionProfileMysqlProfileSslConfig].
  /// [caCertificate] PEM-encoded certificate of the CA that signed the source database
  /// [caCertificateSet] (Output)
  /// [clientCertificate] PEM-encoded certificate that will be used by the replica to
  /// [clientCertificateSet] (Output)
  /// [clientKey] PEM-encoded private key associated with the Client Certificate.
  /// [clientKeySet] (Output)
  const ConnectionProfileMysqlProfileSslConfig({
    this.caCertificate,
    this.caCertificateSet,
    this.clientCertificate,
    this.clientCertificateSet,
    this.clientKey,
    this.clientKeySet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'caCertificateSet': ?caCertificateSet,
      'clientCertificate': ?clientCertificate,
      'clientCertificateSet': ?clientCertificateSet,
      'clientKey': ?clientKey,
      'clientKeySet': ?clientKeySet,
    };
  }

  factory ConnectionProfileMysqlProfileSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMysqlProfileSslConfig(
      caCertificate: (() { final guardedValue = map['caCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caCertificateSet: (() { final guardedValue = map['caCertificateSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateSet: (() { final guardedValue = map['clientCertificateSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKeySet: (() { final guardedValue = map['clientKeySet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

