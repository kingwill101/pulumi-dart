// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_server_ssl_info_common_name.dart';

class TargetServerSSlInfo {
  /// The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  final pulumi.Input<List<String>>? ciphers;
  /// Enables two-way TLS.
  final pulumi.Input<bool>? clientAuthEnabled;
  /// The TLS Common Name of the certificate.
  /// Structure is documented below.
  final pulumi.Input<TargetServerSSlInfoCommonName>? commonName;
  /// Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  final pulumi.Input<bool> enabled;
  /// If true, TLS is strictly enforced.
  final pulumi.Input<bool>? enforce;
  /// If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  final pulumi.Input<bool>? ignoreValidationErrors;
  /// Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert.
  final pulumi.Input<String>? keyAlias;
  /// Required if clientAuthEnabled is true. The resource ID of the keystore.
  final pulumi.Input<String>? keyStore;
  /// The TLS versioins to be used.
  final pulumi.Input<List<String>>? protocols;
  /// The resource ID of the truststore.
  final pulumi.Input<String>? trustStore;

  /// Creates a new [TargetServerSSlInfo].
  /// [ciphers] The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.
  /// [clientAuthEnabled] Enables two-way TLS.
  /// [commonName] The TLS Common Name of the certificate.
  /// [enabled] Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  /// [enforce] If true, TLS is strictly enforced.
  /// [ignoreValidationErrors] If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.
  /// [keyAlias] Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert.
  /// [keyStore] Required if clientAuthEnabled is true. The resource ID of the keystore.
  /// [protocols] The TLS versioins to be used.
  /// [trustStore] The resource ID of the truststore.
  const TargetServerSSlInfo({
    this.ciphers,
    this.clientAuthEnabled,
    this.commonName,
    required this.enabled,
    this.enforce,
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
      'commonName': ?pulumi.Input.mapOptionalInputValue<TargetServerSSlInfoCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'enabled': enabled,
      'enforce': ?enforce,
      'ignoreValidationErrors': ?ignoreValidationErrors,
      'keyAlias': ?keyAlias,
      'keyStore': ?keyStore,
      'protocols': ?protocols,
      'trustStore': ?trustStore,
    };
  }

  factory TargetServerSSlInfo.fromMap(Map<String, dynamic> map) {
    return TargetServerSSlInfo(
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientAuthEnabled: (() { final guardedValue = map['clientAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetServerSSlInfoCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreValidationErrors: (() { final guardedValue = map['ignoreValidationErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyAlias: (() { final guardedValue = map['keyAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStore: (() { final guardedValue = map['keyStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustStore: (() { final guardedValue = map['trustStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

