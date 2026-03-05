/// Specify the crypto provider being used (commoncrypto/openssl). If this argument is not provided, it is automatically determined by searching in the configuration files.
enum SslCryptoProvider {
  valueCommoncrypto("commoncrypto"),
  valueOpenssl("openssl");

  const SslCryptoProvider(this.wireValue);
  final String wireValue;

  static SslCryptoProvider fromValue(String value) {
    for (final item in SslCryptoProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslCryptoProvider value: $value');
  }
}

