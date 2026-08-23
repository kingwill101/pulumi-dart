/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionModeComputeBeta {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionModeComputeBeta(this.wireValue);
  final String wireValue;

  static BackendServiceCompressionModeComputeBeta fromValue(String value) {
    for (final item in BackendServiceCompressionModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceCompressionModeComputeBeta value: $value');
  }
}
