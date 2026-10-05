import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionModeComputeBeta implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionModeComputeBeta(this.wireValue);
  @override
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
