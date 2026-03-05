// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the HANA database TLS/SSL properties which will be used for enabling Azure Backup for this database. You need to specify these details if you have enabled secure communication for your HANA database.
class SSLConfigurationResponse {
  /// Specify the crypto provider being used (commoncrypto/openssl). If this argument is not provided, it is automatically determined by searching in the configuration files.
  final pulumi.Input<String>? sslCryptoProvider;
  /// Specify the hostname as mentioned in the SSL certificate. If this argument is not provided, it is automatically determined by searching in the SSL certificate.
  final pulumi.Input<String>? sslHostNameInCertificate;
  /// Specify the name of the keystore file that contains the client's identity (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  final pulumi.Input<String>? sslKeyStore;
  /// Specify the name of the trust store file that contains the server’s public certificates (eg. sapsrv.pse). The script will search for the file in the appropriate directory depending on the crypto provider mentioned. If this argument is not provided, it is automatically determined by searching in the configuration files.
  final pulumi.Input<String>? sslTrustStore;

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
      sslCryptoProvider: (() { final guardedValue = map['sslCryptoProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslHostNameInCertificate: (() { final guardedValue = map['sslHostNameInCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyStore: (() { final guardedValue = map['sslKeyStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslTrustStore: (() { final guardedValue = map['sslTrustStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

