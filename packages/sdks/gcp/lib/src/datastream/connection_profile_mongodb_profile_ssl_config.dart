// ignore_for_file: unused_element, unnecessary_cast


class ConnectionProfileMongodbProfileSslConfig {
  /// PEM-encoded certificate of the CA that signed the source database
  /// server's certificate.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? caCertificate;
  /// (Output)
  /// Indicates whether the clientKey field is set.
  final bool? caCertificateSet;
  /// PEM-encoded certificate that will be used by the replica to
  /// authenticate against the source database server. If this field
  /// is used then the 'clientKey' and the 'caCertificate' fields are
  /// mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientCertificate;
  /// (Output)
  /// Indicates whether the clientCertificate field is set.
  final bool? clientCertificateSet;
  /// PEM-encoded private key associated with the Client Certificate.
  /// If this field is used then the 'client_certificate' and the
  /// 'ca_certificate' fields are mandatory.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientKey;
  /// (Output)
  /// Indicates whether the clientKey field is set.
  final bool? clientKeySet;
  /// A reference to a Secret Manager resource name storing the
  /// PEM-encoded private key. Mutually exclusive with clientKey.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? secretManagerStoredClientKey;

  /// Creates a new [ConnectionProfileMongodbProfileSslConfig].
  /// [caCertificate] PEM-encoded certificate of the CA that signed the source database
  /// [caCertificateSet] (Output)
  /// [clientCertificate] PEM-encoded certificate that will be used by the replica to
  /// [clientCertificateSet] (Output)
  /// [clientKey] PEM-encoded private key associated with the Client Certificate.
  /// [clientKeySet] (Output)
  /// [secretManagerStoredClientKey] A reference to a Secret Manager resource name storing the
  ConnectionProfileMongodbProfileSslConfig({
    this.caCertificate,
    this.caCertificateSet,
    this.clientCertificate,
    this.clientCertificateSet,
    this.clientKey,
    this.clientKeySet,
    this.secretManagerStoredClientKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'caCertificateSet': ?caCertificateSet,
      'clientCertificate': ?clientCertificate,
      'clientCertificateSet': ?clientCertificateSet,
      'clientKey': ?clientKey,
      'clientKeySet': ?clientKeySet,
      'secretManagerStoredClientKey': ?secretManagerStoredClientKey,
    };
  }

  factory ConnectionProfileMongodbProfileSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfileSslConfig(
      caCertificate: map['caCertificate'] == null ? null : map['caCertificate'] as String,
      caCertificateSet: map['caCertificateSet'] == null ? null : map['caCertificateSet'] as bool,
      clientCertificate: map['clientCertificate'] == null ? null : map['clientCertificate'] as String,
      clientCertificateSet: map['clientCertificateSet'] == null ? null : map['clientCertificateSet'] as bool,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      clientKeySet: map['clientKeySet'] == null ? null : map['clientKeySet'] as bool,
      secretManagerStoredClientKey: map['secretManagerStoredClientKey'] == null ? null : map['secretManagerStoredClientKey'] as String,
    );
  }
}

