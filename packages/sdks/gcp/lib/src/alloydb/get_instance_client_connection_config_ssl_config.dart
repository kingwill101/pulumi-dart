// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceClientConnectionConfigSslConfig {
  /// SSL mode. Specifies client-server SSL/TLS connection behavior. Possible values: ["ENCRYPTED_ONLY", "ALLOW_UNENCRYPTED_AND_ENCRYPTED"]
  final String sslMode;

  /// Creates a new [GetInstanceClientConnectionConfigSslConfig].
  /// [sslMode] SSL mode. Specifies client-server SSL/TLS connection behavior. Possible values: ["ENCRYPTED_ONLY", "ALLOW_UNENCRYPTED_AND_ENCRYPTED"]
  GetInstanceClientConnectionConfigSslConfig({
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sslMode': sslMode,
    };
  }

  factory GetInstanceClientConnectionConfigSslConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceClientConnectionConfigSslConfig(
      sslMode: map['sslMode'] as String,
    );
  }
}

