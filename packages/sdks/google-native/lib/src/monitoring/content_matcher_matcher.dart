/// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
enum ContentMatcherMatcher {
  contentMatcherOptionUnspecified("CONTENT_MATCHER_OPTION_UNSPECIFIED"),
  containsString("CONTAINS_STRING"),
  notContainsString("NOT_CONTAINS_STRING"),
  matchesRegex("MATCHES_REGEX"),
  notMatchesRegex("NOT_MATCHES_REGEX"),
  matchesJsonPath("MATCHES_JSON_PATH"),
  notMatchesJsonPath("NOT_MATCHES_JSON_PATH");

  const ContentMatcherMatcher(this.wireValue);
  final String wireValue;

  static ContentMatcherMatcher fromValue(String value) {
    for (final item in ContentMatcherMatcher.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentMatcherMatcher value: $value');
  }
}

