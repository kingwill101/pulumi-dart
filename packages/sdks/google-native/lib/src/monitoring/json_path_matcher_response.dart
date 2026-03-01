// ignore_for_file: unused_element, unnecessary_cast


/// Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.
class JsonPathMatcherResponse {
  /// The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
  final String jsonMatcher;
  /// JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
  final String jsonPath;

  /// Creates a new [JsonPathMatcherResponse].
  /// [jsonMatcher] The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
  /// [jsonPath] JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
  JsonPathMatcherResponse({
    required this.jsonMatcher,
    required this.jsonPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonMatcher': jsonMatcher,
      'jsonPath': jsonPath,
    };
  }

  factory JsonPathMatcherResponse.fromMap(Map<String, dynamic> map) {
    return JsonPathMatcherResponse(
      jsonMatcher: map['jsonMatcher'] as String,
      jsonPath: map['jsonPath'] as String,
    );
  }
}

