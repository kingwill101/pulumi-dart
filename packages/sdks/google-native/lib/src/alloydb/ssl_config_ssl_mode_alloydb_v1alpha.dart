/// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
enum SslConfigSslModeAlloydbV1alpha {
  sslModeUnspecified("SSL_MODE_UNSPECIFIED"),
  sslModeAllow("SSL_MODE_ALLOW"),
  sslModeRequire("SSL_MODE_REQUIRE"),
  sslModeVerifyCa("SSL_MODE_VERIFY_CA"),
  allowUnencryptedAndEncrypted("ALLOW_UNENCRYPTED_AND_ENCRYPTED"),
  encryptedOnly("ENCRYPTED_ONLY");

  const SslConfigSslModeAlloydbV1alpha(this.wireValue);
  final String wireValue;

  static SslConfigSslModeAlloydbV1alpha fromValue(String value) {
    for (final item in SslConfigSslModeAlloydbV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigSslModeAlloydbV1alpha value: $value');
  }
}
