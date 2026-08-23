/// Gets or sets certificate preference if secure communication is enabled.
enum SslPreference {
  disabled("Disabled"),
  rootCertificate("RootCertificate"),
  serverCertificate("ServerCertificate");

  const SslPreference(this.wireValue);
  final String wireValue;

  static SslPreference fromValue(String value) {
    for (final item in SslPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslPreference value: $value');
  }
}
