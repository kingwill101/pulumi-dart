/// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
enum RouterNatLogConfigFilterComputeBeta {
  all("ALL"),
  errorsOnly("ERRORS_ONLY"),
  translationsOnly("TRANSLATIONS_ONLY");

  const RouterNatLogConfigFilterComputeBeta(this.wireValue);
  final String wireValue;

  static RouterNatLogConfigFilterComputeBeta fromValue(String value) {
    for (final item in RouterNatLogConfigFilterComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouterNatLogConfigFilterComputeBeta value: $value',
    );
  }
}
