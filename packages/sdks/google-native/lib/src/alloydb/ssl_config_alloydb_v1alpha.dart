// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_ca_source_alloydb_v1alpha.dart';
import 'ssl_config_ssl_mode_alloydb_v1alpha.dart';

/// SSL configuration.
class SslConfigAlloydbV1alpha {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final pulumi.Input<SslConfigCaSourceAlloydbV1alpha>? caSource;
  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final pulumi.Input<SslConfigSslModeAlloydbV1alpha>? sslMode;

  /// Creates a new [SslConfigAlloydbV1alpha].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  const SslConfigAlloydbV1alpha({
    this.caSource,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caSource': ?pulumi.Input.mapOptionalInputValue<SslConfigCaSourceAlloydbV1alpha, String>(caSource, (value) => value.wireValue),
      'sslMode': ?pulumi.Input.mapOptionalInputValue<SslConfigSslModeAlloydbV1alpha, String>(sslMode, (value) => value.wireValue),
    };
  }

  factory SslConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return SslConfigAlloydbV1alpha(
      caSource: (() { final guardedValue = map['caSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigCaSourceAlloydbV1alpha.fromValue(guardedValue as String)); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigSslModeAlloydbV1alpha.fromValue(guardedValue as String)); })(),
    );
  }
}

