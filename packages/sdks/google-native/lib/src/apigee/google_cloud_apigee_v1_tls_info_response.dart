// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_tls_info_common_name_response.dart';

/// TLS configuration information for virtual hosts and TargetServers.
class GoogleCloudApigeeV1TlsInfoResponse {
  /// The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  final pulumi.Input<List<String>> ciphers;

  /// Optional. Enables two-way TLS.
  final pulumi.Input<bool> clientAuthEnabled;

  /// The TLS Common Name of the certificate.
  final pulumi.Input<GoogleCloudApigeeV1TlsInfoCommonNameResponse> commonName;

  /// Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  final pulumi.Input<bool> enabled;

  /// If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  final pulumi.Input<bool> ignoreValidationErrors;

  /// Required if `client_auth_enabled` is true. The resource ID for the alias containing the private key and cert.
  final pulumi.Input<String> keyAlias;

  /// Required if `client_auth_enabled` is true. The resource ID of the keystore.
  final pulumi.Input<String> keyStore;

  /// The TLS versioins to be used.
  final pulumi.Input<List<String>> protocols;

  /// The resource ID of the truststore.
  final pulumi.Input<String> trustStore;

  /// Creates a new [GoogleCloudApigeeV1TlsInfoResponse].
  /// [ciphers] The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  /// [clientAuthEnabled] Optional. Enables two-way TLS.
  /// [commonName] The TLS Common Name of the certificate.
  /// [enabled] Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  /// [ignoreValidationErrors] If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  /// [keyAlias] Required if `client_auth_enabled` is true. The resource ID for the alias containing the private key and cert.
  /// [keyStore] Required if `client_auth_enabled` is true. The resource ID of the keystore.
  /// [protocols] The TLS versioins to be used.
  /// [trustStore] The resource ID of the truststore.
  GoogleCloudApigeeV1TlsInfoResponse({
    required this.ciphers,
    required this.clientAuthEnabled,
    required this.commonName,
    required this.enabled,
    required this.ignoreValidationErrors,
    required this.keyAlias,
    required this.keyStore,
    required this.protocols,
    required this.trustStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'clientAuthEnabled': clientAuthEnabled,
      'commonName':
          pulumi.Input.mapInputValue<
            GoogleCloudApigeeV1TlsInfoCommonNameResponse,
            Map<String, dynamic>
          >(commonName, (value) => value.toMap()),
      'enabled': enabled,
      'ignoreValidationErrors': ignoreValidationErrors,
      'keyAlias': keyAlias,
      'keyStore': keyStore,
      'protocols': protocols,
      'trustStore': trustStore,
    };
  }

  factory GoogleCloudApigeeV1TlsInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TlsInfoResponse(
      ciphers: pulumi.Input.fromValue((map['ciphers'] as List).cast<String>()),
      clientAuthEnabled: pulumi.Input.fromValue(
        map['clientAuthEnabled'] as bool,
      ),
      commonName: pulumi.Input.fromValue(
        GoogleCloudApigeeV1TlsInfoCommonNameResponse.fromMap(
          (map['commonName']! as Map).cast<String, dynamic>(),
        ),
      ),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      ignoreValidationErrors: pulumi.Input.fromValue(
        map['ignoreValidationErrors'] as bool,
      ),
      keyAlias: pulumi.Input.fromValue(map['keyAlias'] as String),
      keyStore: pulumi.Input.fromValue(map['keyStore'] as String),
      protocols: pulumi.Input.fromValue(
        (map['protocols'] as List).cast<String>(),
      ),
      trustStore: pulumi.Input.fromValue(map['trustStore'] as String),
    );
  }
}
