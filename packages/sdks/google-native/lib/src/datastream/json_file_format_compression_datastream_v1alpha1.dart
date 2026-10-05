import 'package:pulumi/pulumi.dart' as pulumi;

/// Compression of the loaded JSON file.
enum JsonFileFormatCompressionDatastreamV1alpha1 implements pulumi.PulumiEnum<String> {
  jsonCompressionUnspecified("JSON_COMPRESSION_UNSPECIFIED"),
  noCompression("NO_COMPRESSION"),
  gzip("GZIP");

  const JsonFileFormatCompressionDatastreamV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static JsonFileFormatCompressionDatastreamV1alpha1 fromValue(String value) {
    for (final item in JsonFileFormatCompressionDatastreamV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonFileFormatCompressionDatastreamV1alpha1 value: $value');
  }
}
