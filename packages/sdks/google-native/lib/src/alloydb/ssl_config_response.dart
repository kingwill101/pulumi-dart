// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL configuration.
class SslConfigResponse {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final pulumi.Input<String> caSource;
  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final pulumi.Input<String> sslMode;

  /// Creates a new [SslConfigResponse].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  SslConfigResponse({
    required this.caSource,
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caSource': caSource,
      'sslMode': sslMode,
    };
  }

  factory SslConfigResponse.fromMap(Map<String, dynamic> map) {
    return SslConfigResponse(
      caSource: pulumi.Input.fromValue(map['caSource'] as String),
      sslMode: pulumi.Input.fromValue(map['sslMode'] as String),
    );
  }
}

