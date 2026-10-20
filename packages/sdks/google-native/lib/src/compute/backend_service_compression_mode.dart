import 'package:pulumi/pulumi.dart' as pulumi;

/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionMode implements pulumi.PulumiEnum<String> {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionMode(this.wireValue);
  @override
  final String wireValue;

  static BackendServiceCompressionMode fromValue(String value) {
    for (final item in BackendServiceCompressionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceCompressionMode value: $value');
  }
}
