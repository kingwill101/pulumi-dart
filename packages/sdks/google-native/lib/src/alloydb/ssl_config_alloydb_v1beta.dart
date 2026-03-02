// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_ca_source_alloydb_v1beta.dart';
import 'ssl_config_ssl_mode_alloydb_v1beta.dart';

/// SSL configuration.
class SslConfigAlloydbV1beta {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final pulumi.Input<SslConfigCaSourceAlloydbV1beta>? caSource;
  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final pulumi.Input<SslConfigSslModeAlloydbV1beta>? sslMode;

  /// Creates a new [SslConfigAlloydbV1beta].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  SslConfigAlloydbV1beta({
    this.caSource,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caSource': ?pulumi.Input.mapOptionalInputValue<SslConfigCaSourceAlloydbV1beta, String>(caSource, (value) => value.value),
      'sslMode': ?pulumi.Input.mapOptionalInputValue<SslConfigSslModeAlloydbV1beta, String>(sslMode, (value) => value.value),
    };
  }

  factory SslConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return SslConfigAlloydbV1beta(
      caSource: map['caSource'] == null ? null : (SslConfigCaSourceAlloydbV1beta.fromValue(map['caSource'] as String)).input(),
      sslMode: map['sslMode'] == null ? null : (SslConfigSslModeAlloydbV1beta.fromValue(map['sslMode'] as String)).input(),
    );
  }
}

