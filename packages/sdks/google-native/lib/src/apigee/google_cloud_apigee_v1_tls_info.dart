// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_tls_info_common_name.dart';

/// TLS configuration information for virtual hosts and TargetServers.
class GoogleCloudApigeeV1TlsInfo {
  /// The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  final List<String>? ciphers;
  /// Optional. Enables two-way TLS.
  final bool? clientAuthEnabled;
  /// The TLS Common Name of the certificate.
  final GoogleCloudApigeeV1TlsInfoCommonName? commonName;
  /// Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  final bool enabled;
  /// If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  final bool? ignoreValidationErrors;
  /// Required if `client_auth_enabled` is true. The resource ID for the alias containing the private key and cert.
  final String? keyAlias;
  /// Required if `client_auth_enabled` is true. The resource ID of the keystore.
  final String? keyStore;
  /// The TLS versioins to be used.
  final List<String>? protocols;
  /// The resource ID of the truststore.
  final String? trustStore;

  /// Creates a new [GoogleCloudApigeeV1TlsInfo].
  /// [ciphers] The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  /// [clientAuthEnabled] Optional. Enables two-way TLS.
  /// [commonName] The TLS Common Name of the certificate.
  /// [enabled] Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  /// [ignoreValidationErrors] If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  /// [keyAlias] Required if `client_auth_enabled` is true. The resource ID for the alias containing the private key and cert.
  /// [keyStore] Required if `client_auth_enabled` is true. The resource ID of the keystore.
  /// [protocols] The TLS versioins to be used.
  /// [trustStore] The resource ID of the truststore.
  GoogleCloudApigeeV1TlsInfo({
    this.ciphers,
    this.clientAuthEnabled,
    this.commonName,
    required this.enabled,
    this.ignoreValidationErrors,
    this.keyAlias,
    this.keyStore,
    this.protocols,
    this.trustStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ?ciphers,
      'clientAuthEnabled': ?clientAuthEnabled,
      'commonName': ?commonName == null ? null : commonName!.toMap(),
      'enabled': enabled,
      'ignoreValidationErrors': ?ignoreValidationErrors,
      'keyAlias': ?keyAlias,
      'keyStore': ?keyStore,
      'protocols': ?protocols,
      'trustStore': ?trustStore,
    };
  }

  factory GoogleCloudApigeeV1TlsInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TlsInfo(
      ciphers: map['ciphers'] == null ? null : (map['ciphers'] as List).cast<String>(),
      clientAuthEnabled: map['clientAuthEnabled'] == null ? null : map['clientAuthEnabled'] as bool,
      commonName: map['commonName'] == null ? null : GoogleCloudApigeeV1TlsInfoCommonName.fromMap((map['commonName'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      ignoreValidationErrors: map['ignoreValidationErrors'] == null ? null : map['ignoreValidationErrors'] as bool,
      keyAlias: map['keyAlias'] == null ? null : map['keyAlias'] as String,
      keyStore: map['keyStore'] == null ? null : map['keyStore'] as String,
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<String>(),
      trustStore: map['trustStore'] == null ? null : map['trustStore'] as String,
    );
  }
}

