/// The horizontal alignment of both the title and content
enum TextStyleHorizontalAlignment {
  horizontalAlignmentUnspecified("HORIZONTAL_ALIGNMENT_UNSPECIFIED"),
  hLeft("H_LEFT"),
  hCenter("H_CENTER"),
  hRight("H_RIGHT");

  const TextStyleHorizontalAlignment(this.value);
  final String value;

  static TextStyleHorizontalAlignment fromValue(String value) {
    for (final item in TextStyleHorizontalAlignment.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStyleHorizontalAlignment value: $value');
  }
}

