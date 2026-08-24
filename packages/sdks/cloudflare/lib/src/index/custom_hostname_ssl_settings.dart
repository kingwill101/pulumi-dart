// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomHostnameSslSettings {
  /// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  final pulumi.Input<List<String>?>? ciphers;
  /// Whether or not Early Hints is enabled.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? earlyHints;
  /// Whether or not HTTP2 is enabled.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? http2;
  /// The minimum TLS version supported.
  /// Available values: "1.0", "1.1", "1.2", "1.3".
  final pulumi.Input<String?>? minTlsVersion;
  /// Whether or not TLS 1.3 is enabled.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? tls13;

  /// Creates a new [CustomHostnameSslSettings].
  /// [ciphers] An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  /// [earlyHints] Whether or not Early Hints is enabled.
  /// [http2] Whether or not HTTP2 is enabled.
  /// [minTlsVersion] The minimum TLS version supported.
  /// [tls13] Whether or not TLS 1.3 is enabled.
  const CustomHostnameSslSettings({
    this.ciphers,
    this.earlyHints,
    this.http2,
    this.minTlsVersion,
    this.tls13,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ?ciphers,
      'earlyHints': ?earlyHints,
      'http2': ?http2,
      'minTlsVersion': ?minTlsVersion,
      'tls13': ?tls13,
    };
  }

  factory CustomHostnameSslSettings.fromMap(Map<String, dynamic> map) {
    return CustomHostnameSslSettings(
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      earlyHints: (() { final guardedValue = map['earlyHints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2: (() { final guardedValue = map['http2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls13: (() { final guardedValue = map['tls13']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
