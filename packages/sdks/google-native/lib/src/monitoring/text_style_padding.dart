/// The amount of padding around the widget
enum TextStylePadding {
  paddingSizeUnspecified("PADDING_SIZE_UNSPECIFIED"),
  pExtraSmall("P_EXTRA_SMALL"),
  pSmall("P_SMALL"),
  pMedium("P_MEDIUM"),
  pLarge("P_LARGE"),
  pExtraLarge("P_EXTRA_LARGE");

  const TextStylePadding(this.wireValue);
  final String wireValue;

  static TextStylePadding fromValue(String value) {
    for (final item in TextStylePadding.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStylePadding value: $value');
  }
}

