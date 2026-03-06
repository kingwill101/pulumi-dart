// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_ca_source.dart';
import 'ssl_config_ssl_mode.dart';

/// SSL configuration.
class SslConfig {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final pulumi.Input<SslConfigCaSource>? caSource;
  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final pulumi.Input<SslConfigSslMode>? sslMode;

  /// Creates a new [SslConfig].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  const SslConfig({
    this.caSource,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caSource': ?pulumi.Input.mapOptionalInputValue<SslConfigCaSource, String>(caSource, (value) => value.wireValue),
      'sslMode': ?pulumi.Input.mapOptionalInputValue<SslConfigSslMode, String>(sslMode, (value) => value.wireValue),
    };
  }

  factory SslConfig.fromMap(Map<String, dynamic> map) {
    return SslConfig(
      caSource: (() { final guardedValue = map['caSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigCaSource.fromValue(guardedValue as String)); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigSslMode.fromValue(guardedValue as String)); })(),
    );
  }
}

