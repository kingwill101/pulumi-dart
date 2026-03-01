// ignore_for_file: unused_element, unnecessary_cast


/// Specify the HANA database TLS/SSL properties which will be used for enabling Azure Backup for this database. You need to specify these details if you have enabled secure communication for your HANA database.
class SSLConfigurationResponse {
  /// Specify the crypto provider being used (commoncrypto/openssl). If this argument is not provided, it is automatically determined by searching in the configuration files.
  final String? sslCryptoProvider;
  /// Specify the hostname as mentioned in the SSL certificate. If this argument is not provided, it is automatically determined by searching in the SSL certificate.
  final String? sslHostNameInCertificate;
  /// Specify the name of the keystore file that contains the client's identity (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  final String? sslKeyStore;
  /// Specify the name of the trust store file that contains the server’s public certificates (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  final String? sslTrustStore;

  /// Creates a new [SSLConfigurationResponse].
  /// [sslCryptoProvider] Specify the crypto provider being used (commoncrypto/openssl). If this argument is not provided, it is automatically determined by searching in the configuration files.
  /// [sslHostNameInCertificate] Specify the hostname as mentioned in the SSL certificate. If this argument is not provided, it is automatically determined by searching in the SSL certificate.
  /// [sslKeyStore] Specify the name of the keystore file that contains the client's identity (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  /// [sslTrustStore] Specify the name of the trust store file that contains the server’s public certificates (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  SSLConfigurationResponse({
    this.sslCryptoProvider,
    this.sslHostNameInCertificate,
    this.sslKeyStore,
    this.sslTrustStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sslCryptoProvider': ?sslCryptoProvider,
      'sslHostNameInCertificate': ?sslHostNameInCertificate,
      'sslKeyStore': ?sslKeyStore,
      'sslTrustStore': ?sslTrustStore,
    };
  }

  factory SSLConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SSLConfigurationResponse(
      sslCryptoProvider: map['sslCryptoProvider'] == null ? null : map['sslCryptoProvider'] as String,
      sslHostNameInCertificate: map['sslHostNameInCertificate'] == null ? null : map['sslHostNameInCertificate'] as String,
      sslKeyStore: map['sslKeyStore'] == null ? null : map['sslKeyStore'] as String,
      sslTrustStore: map['sslTrustStore'] == null ? null : map['sslTrustStore'] as String,
    );
  }
}

