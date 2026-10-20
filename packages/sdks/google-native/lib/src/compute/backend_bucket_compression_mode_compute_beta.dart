import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionModeComputeBeta implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static BackendBucketCompressionModeComputeBeta fromValue(String value) {
    for (final item in BackendBucketCompressionModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBucketCompressionModeComputeBeta value: $value');
  }
}
