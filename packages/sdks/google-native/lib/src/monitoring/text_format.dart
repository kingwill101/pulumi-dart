import 'package:pulumi/pulumi.dart' as pulumi;

/// How the text content is formatted.
enum TextFormat implements pulumi.PulumiEnum<String> {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  markdown("MARKDOWN"),
  raw("RAW");

  const TextFormat(this.wireValue);
  @override
  final String wireValue;

  static TextFormat fromValue(String value) {
    for (final item in TextFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextFormat value: $value');
  }
}
