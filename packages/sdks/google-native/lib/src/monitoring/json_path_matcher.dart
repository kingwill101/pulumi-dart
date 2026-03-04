// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_path_matcher_json_matcher.dart';

/// Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.
class JsonPathMatcher {
  /// The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
  final pulumi.Input<JsonPathMatcherJsonMatcher>? jsonMatcher;

  /// JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
  final pulumi.Input<String>? jsonPath;

  /// Creates a new [JsonPathMatcher].
  /// [jsonMatcher] The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
  /// [jsonPath] JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
  JsonPathMatcher({this.jsonMatcher, this.jsonPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonMatcher':
          ?pulumi.Input.mapOptionalInputValue<
            JsonPathMatcherJsonMatcher,
            String
          >(jsonMatcher, (value) => value.wireValue),
      'jsonPath': ?jsonPath,
    };
  }

  factory JsonPathMatcher.fromMap(Map<String, dynamic> map) {
    return JsonPathMatcher(
      jsonMatcher: (() {
        final guardedValue = map['jsonMatcher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JsonPathMatcherJsonMatcher.fromValue(guardedValue as String),
        );
      })(),
      jsonPath: (() {
        final guardedValue = map['jsonPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
