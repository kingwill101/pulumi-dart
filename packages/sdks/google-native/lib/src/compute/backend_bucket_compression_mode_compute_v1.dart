import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionModeComputeV1 implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static BackendBucketCompressionModeComputeV1 fromValue(String value) {
    for (final item in BackendBucketCompressionModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBucketCompressionModeComputeV1 value: $value');
  }
}
