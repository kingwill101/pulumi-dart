/// The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
enum JsonPathMatcherJsonMatcher {
  jsonPathMatcherOptionUnspecified("JSON_PATH_MATCHER_OPTION_UNSPECIFIED"),
  exactMatch("EXACT_MATCH"),
  regexMatch("REGEX_MATCH");

  const JsonPathMatcherJsonMatcher(this.value);
  final String value;

  static JsonPathMatcherJsonMatcher fromValue(String value) {
    for (final item in JsonPathMatcherJsonMatcher.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonPathMatcherJsonMatcher value: $value');
  }
}

