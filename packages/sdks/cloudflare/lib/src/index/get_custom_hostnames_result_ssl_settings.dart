// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnamesResultSslSettings {
  /// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  final pulumi.Input<List<String>> ciphers;
  /// Whether or not Early Hints is enabled.
  /// Available values: "on", "off".
  final pulumi.Input<String> earlyHints;
  /// Whether or not HTTP2 is enabled.
  /// Available values: "on", "off".
  final pulumi.Input<String> http2;
  /// The minimum TLS version supported.
  /// Available values: "1.0", "1.1", "1.2", "1.3".
  final pulumi.Input<String> minTlsVersion;
  /// Whether or not TLS 1.3 is enabled.
  /// Available values: "on", "off".
  final pulumi.Input<String> tls13;

  /// Creates a new [GetCustomHostnamesResultSslSettings].
  /// [ciphers] An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  /// [earlyHints] Whether or not Early Hints is enabled.
  /// [http2] Whether or not HTTP2 is enabled.
  /// [minTlsVersion] The minimum TLS version supported.
  /// [tls13] Whether or not TLS 1.3 is enabled.
  const GetCustomHostnamesResultSslSettings({
    required this.ciphers,
    required this.earlyHints,
    required this.http2,
    required this.minTlsVersion,
    required this.tls13,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'earlyHints': earlyHints,
      'http2': http2,
      'minTlsVersion': minTlsVersion,
      'tls13': tls13,
    };
  }

  factory GetCustomHostnamesResultSslSettings.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesResultSslSettings(
      ciphers: pulumi.Input.fromValue((map['ciphers'] as List).cast<String>()),
      earlyHints: pulumi.Input.fromValue(map['earlyHints'] as String),
      http2: pulumi.Input.fromValue(map['http2'] as String),
      minTlsVersion: pulumi.Input.fromValue(map['minTlsVersion'] as String),
      tls13: pulumi.Input.fromValue(map['tls13'] as String),
    );
  }
}
