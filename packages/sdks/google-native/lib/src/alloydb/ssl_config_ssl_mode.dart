/// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
enum SslConfigSslMode {
  sslModeUnspecified("SSL_MODE_UNSPECIFIED"),
  sslModeAllow("SSL_MODE_ALLOW"),
  sslModeRequire("SSL_MODE_REQUIRE"),
  sslModeVerifyCa("SSL_MODE_VERIFY_CA"),
  allowUnencryptedAndEncrypted("ALLOW_UNENCRYPTED_AND_ENCRYPTED"),
  encryptedOnly("ENCRYPTED_ONLY");

  const SslConfigSslMode(this.wireValue);
  final String wireValue;

  static SslConfigSslMode fromValue(String value) {
    for (final item in SslConfigSslMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigSslMode value: $value');
  }
}
