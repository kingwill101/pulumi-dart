/// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
enum SslConfigSslModeAlloydbV1beta {
  sslModeUnspecified("SSL_MODE_UNSPECIFIED"),
  sslModeAllow("SSL_MODE_ALLOW"),
  sslModeRequire("SSL_MODE_REQUIRE"),
  sslModeVerifyCa("SSL_MODE_VERIFY_CA"),
  allowUnencryptedAndEncrypted("ALLOW_UNENCRYPTED_AND_ENCRYPTED"),
  encryptedOnly("ENCRYPTED_ONLY");

  const SslConfigSslModeAlloydbV1beta(this.wireValue);
  final String wireValue;

  static SslConfigSslModeAlloydbV1beta fromValue(String value) {
    for (final item in SslConfigSslModeAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigSslModeAlloydbV1beta value: $value');
  }
}
