/// Gets or sets certificate preference if secure communication is enabled.
enum SslPreference {
  disabled("Disabled"),
  rootCertificate("RootCertificate"),
  serverCertificate("ServerCertificate");

  const SslPreference(this.value);
  final String value;

  static SslPreference fromValue(String value) {
    for (final item in SslPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslPreference value: $value');
  }
}

