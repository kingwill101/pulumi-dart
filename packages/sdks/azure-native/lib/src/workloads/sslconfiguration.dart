// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the HANA database TLS/SSL properties which will be used for enabling Azure Backup for this database. You need to specify these details if you have enabled secure communication for your HANA database.
class SSLConfiguration {
  /// Specify the crypto provider being used (commoncrypto/openssl). If this argument is not provided, it is automatically determined by searching in the configuration files.
  final pulumi.Input<String>? sslCryptoProvider;
  /// Specify the hostname as mentioned in the SSL certificate. If this argument is not provided, it is automatically determined by searching in the SSL certificate.
  final pulumi.Input<String>? sslHostNameInCertificate;
  /// Specify the name of the keystore file that contains the client's identity (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  final pulumi.Input<String>? sslKeyStore;
  /// Specify the name of the trust store file that contains the server’s public certificates (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  final pulumi.Input<String>? sslTrustStore;

  /// Creates a new [SSLConfiguration].
  /// [sslCryptoProvider] Specify the crypto provider being used (commoncrypto/openssl). If this argument is not provided, it is automatically determined by searching in the configuration files.
  /// [sslHostNameInCertificate] Specify the hostname as mentioned in the SSL certificate. If this argument is not provided, it is automatically determined by searching in the SSL certificate.
  /// [sslKeyStore] Specify the name of the keystore file that contains the client's identity (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  /// [sslTrustStore] Specify the name of the trust store file that contains the server’s public certificates (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  SSLConfiguration({
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

  factory SSLConfiguration.fromMap(Map<String, dynamic> map) {
    return SSLConfiguration(
      sslCryptoProvider: map['sslCryptoProvider'] == null ? null : (map['sslCryptoProvider'] as String).input(),
      sslHostNameInCertificate: map['sslHostNameInCertificate'] == null ? null : (map['sslHostNameInCertificate'] as String).input(),
      sslKeyStore: map['sslKeyStore'] == null ? null : (map['sslKeyStore'] as String).input(),
      sslTrustStore: map['sslTrustStore'] == null ? null : (map['sslTrustStore'] as String).input(),
    );
  }
}

