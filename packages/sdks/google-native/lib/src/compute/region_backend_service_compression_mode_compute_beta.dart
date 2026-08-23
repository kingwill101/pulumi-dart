/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionModeComputeBeta {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionModeComputeBeta(this.wireValue);
  final String wireValue;

  static RegionBackendServiceCompressionModeComputeBeta fromValue(String value) {
    for (final item in RegionBackendServiceCompressionModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceCompressionModeComputeBeta value: $value');
  }
}
