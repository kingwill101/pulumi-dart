/// Indicates the category (image, audio, video etc.) of the original content.
enum DocumentContentCategory {
  contentCategoryUnspecified("CONTENT_CATEGORY_UNSPECIFIED"),
  contentCategoryImage("CONTENT_CATEGORY_IMAGE"),
  contentCategoryAudio("CONTENT_CATEGORY_AUDIO"),
  contentCategoryVideo("CONTENT_CATEGORY_VIDEO");

  const DocumentContentCategory(this.value);
  final String value;

  static DocumentContentCategory fromValue(String value) {
    for (final item in DocumentContentCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DocumentContentCategory value: $value');
  }
}

