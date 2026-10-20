import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionMode implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionMode(this.wireValue);
  @override
  final String wireValue;

  static BackendBucketCompressionMode fromValue(String value) {
    for (final item in BackendBucketCompressionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBucketCompressionMode value: $value');
  }
}
