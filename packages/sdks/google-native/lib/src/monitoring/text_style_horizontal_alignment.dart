import 'package:pulumi/pulumi.dart' as pulumi;

/// The horizontal alignment of both the title and content
enum TextStyleHorizontalAlignment implements pulumi.PulumiEnum<String> {
  horizontalAlignmentUnspecified("HORIZONTAL_ALIGNMENT_UNSPECIFIED"),
  hLeft("H_LEFT"),
  hCenter("H_CENTER"),
  hRight("H_RIGHT");

  const TextStyleHorizontalAlignment(this.wireValue);
  @override
  final String wireValue;

  static TextStyleHorizontalAlignment fromValue(String value) {
    for (final item in TextStyleHorizontalAlignment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStyleHorizontalAlignment value: $value');
  }
}
