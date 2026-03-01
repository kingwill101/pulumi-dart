// ignore_for_file: unused_element, unnecessary_cast


/// SSL configuration.
class SslConfigResponse {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final String caSource;
  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final String sslMode;

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
      caSource: map['caSource'] as String,
      sslMode: map['sslMode'] as String,
    );
  }
}

