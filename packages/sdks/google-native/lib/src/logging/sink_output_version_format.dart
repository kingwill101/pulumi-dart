import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. This field is unused.
enum SinkOutputVersionFormat implements pulumi.PulumiEnum<String> {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const SinkOutputVersionFormat(this.wireValue);
  @override
  final String wireValue;

  static SinkOutputVersionFormat fromValue(String value) {
    for (final item in SinkOutputVersionFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SinkOutputVersionFormat value: $value');
  }
}
