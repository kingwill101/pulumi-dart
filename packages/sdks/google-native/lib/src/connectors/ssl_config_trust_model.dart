/// Trust Model of the SSL connection
enum SslConfigTrustModel {
  public("PUBLIC"),
  private("PRIVATE"),
  insecure("INSECURE");

  const SslConfigTrustModel(this.wireValue);
  final String wireValue;

  static SslConfigTrustModel fromValue(String value) {
    for (final item in SslConfigTrustModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigTrustModel value: $value');
  }
}

