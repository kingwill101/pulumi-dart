import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionModeComputeV1 implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RegionBackendServiceCompressionModeComputeV1 fromValue(String value) {
    for (final item in RegionBackendServiceCompressionModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionBackendServiceCompressionModeComputeV1 value: $value');
  }
}
