/// The vertical alignment of both the title and content
enum TextStyleVerticalAlignment {
  verticalAlignmentUnspecified("VERTICAL_ALIGNMENT_UNSPECIFIED"),
  vTop("V_TOP"),
  vCenter("V_CENTER"),
  vBottom("V_BOTTOM");

  const TextStyleVerticalAlignment(this.value);
  final String value;

  static TextStyleVerticalAlignment fromValue(String value) {
    for (final item in TextStyleVerticalAlignment.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStyleVerticalAlignment value: $value');
  }
}

