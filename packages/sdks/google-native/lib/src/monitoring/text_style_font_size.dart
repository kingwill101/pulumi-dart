import 'package:pulumi/pulumi.dart' as pulumi;

/// Font sizes for both the title and content. The title will still be larger relative to the content.
enum TextStyleFontSize implements pulumi.PulumiEnum<String> {
  fontSizeUnspecified("FONT_SIZE_UNSPECIFIED"),
  fsExtraSmall("FS_EXTRA_SMALL"),
  fsSmall("FS_SMALL"),
  fsMedium("FS_MEDIUM"),
  fsLarge("FS_LARGE"),
  fsExtraLarge("FS_EXTRA_LARGE");

  const TextStyleFontSize(this.wireValue);
  @override
  final String wireValue;

  static TextStyleFontSize fromValue(String value) {
    for (final item in TextStyleFontSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStyleFontSize value: $value');
  }
}
