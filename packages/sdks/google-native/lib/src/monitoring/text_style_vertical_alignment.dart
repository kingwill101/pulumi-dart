import 'package:pulumi/pulumi.dart' as pulumi;

/// The vertical alignment of both the title and content
enum TextStyleVerticalAlignment implements pulumi.PulumiEnum<String> {
  verticalAlignmentUnspecified("VERTICAL_ALIGNMENT_UNSPECIFIED"),
  vTop("V_TOP"),
  vCenter("V_CENTER"),
  vBottom("V_BOTTOM");

  const TextStyleVerticalAlignment(this.wireValue);
  @override
  final String wireValue;

  static TextStyleVerticalAlignment fromValue(String value) {
    for (final item in TextStyleVerticalAlignment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStyleVerticalAlignment value: $value');
  }
}
