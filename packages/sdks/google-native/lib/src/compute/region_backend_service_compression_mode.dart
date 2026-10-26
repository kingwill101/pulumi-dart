import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionMode implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionMode(this.wireValue);
  @override
  final String wireValue;

  static RegionBackendServiceCompressionMode fromValue(String value) {
    for (final item in RegionBackendServiceCompressionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceCompressionMode value: $value');
  }
}
