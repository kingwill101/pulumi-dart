/// Specify how SSL/TLS is enforced in database connections. This flag is supported only for PostgreSQL. Use the legacy `require_ssl` flag for enforcing SSL/TLS in MySQL and SQL Server. But, for PostgreSQL, use the `ssl_mode` flag instead of the legacy `require_ssl` flag. To avoid the conflict between those flags in PostgreSQL, only the following value pairs are valid: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` * `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` Note that the value of `ssl_mode` gets priority over the value of the legacy `require_ssl`. For example, for the pair `ssl_mode=ENCRYPTED_ONLY, require_ssl=false`, the `ssl_mode=ENCRYPTED_ONLY` means "only accepts SSL connection", while the `require_ssl=false` means "both non-SSL and SSL connections are allowed". The database respects `ssl_mode` in this case and only accepts SSL connections.
enum IpConfigurationSslModeSqladminV1beta4 {
  sslModeUnspecified("SSL_MODE_UNSPECIFIED"),
  allowUnencryptedAndEncrypted("ALLOW_UNENCRYPTED_AND_ENCRYPTED"),
  encryptedOnly("ENCRYPTED_ONLY"),
  trustedClientCertificateRequired("TRUSTED_CLIENT_CERTIFICATE_REQUIRED");

  const IpConfigurationSslModeSqladminV1beta4(this.wireValue);
  final String wireValue;

  static IpConfigurationSslModeSqladminV1beta4 fromValue(String value) {
    for (final item in IpConfigurationSslModeSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IpConfigurationSslModeSqladminV1beta4 value: $value',
    );
  }
}
