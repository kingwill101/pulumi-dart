/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionModeComputeV1 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionModeComputeV1(this.wireValue);
  final String wireValue;

  static RegionBackendServiceCompressionModeComputeV1 fromValue(String value) {
    for (final item in RegionBackendServiceCompressionModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionBackendServiceCompressionModeComputeV1 value: $value',
    );
  }
}
