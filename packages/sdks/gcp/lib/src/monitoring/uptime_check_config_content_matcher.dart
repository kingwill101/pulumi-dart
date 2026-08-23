// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_content_matcher_json_path_matcher.dart';

class UptimeCheckConfigContentMatcher {
  /// String or regex content to match (max 1024 bytes)
  final pulumi.Input<String> content;
  /// Information needed to perform a JSONPath content match. Used for `ContentMatcherOption::MATCHES_JSON_PATH` and `ContentMatcherOption::NOT_MATCHES_JSON_PATH`.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigContentMatcherJsonPathMatcher>? jsonPathMatcher;
  /// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  /// Default value is `CONTAINS_STRING`.
  /// Possible values are: `CONTAINS_STRING`, `NOT_CONTAINS_STRING`, `MATCHES_REGEX`, `NOT_MATCHES_REGEX`, `MATCHES_JSON_PATH`, `NOT_MATCHES_JSON_PATH`.
  final pulumi.Input<String>? matcher;

  /// Creates a new [UptimeCheckConfigContentMatcher].
  /// [content] String or regex content to match (max 1024 bytes)
  /// [jsonPathMatcher] Information needed to perform a JSONPath content match. Used for `ContentMatcherOption::MATCHES_JSON_PATH` and `ContentMatcherOption::NOT_MATCHES_JSON_PATH`.
  /// [matcher] The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  const UptimeCheckConfigContentMatcher({
    required this.content,
    this.jsonPathMatcher,
    this.matcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'jsonPathMatcher': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigContentMatcherJsonPathMatcher, Map<String, dynamic>>(jsonPathMatcher, (value) => value.toMap()),
      'matcher': ?matcher,
    };
  }

  factory UptimeCheckConfigContentMatcher.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigContentMatcher(
      content: pulumi.Input.fromValue(map['content'] as String),
      jsonPathMatcher: (() { final guardedValue = map['jsonPathMatcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigContentMatcherJsonPathMatcher.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matcher: (() { final guardedValue = map['matcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
