// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigContentMatcherJsonPathMatcher {
  /// Options to perform JSONPath content matching.
  /// Default value is `EXACT_MATCH`.
  /// Possible values are: `EXACT_MATCH`, `REGEX_MATCH`.
  final pulumi.Input<String>? jsonMatcher;
  /// JSONPath within the response output pointing to the expected `ContentMatcher::content` to match against.
  final pulumi.Input<String> jsonPath;

  /// Creates a new [UptimeCheckConfigContentMatcherJsonPathMatcher].
  /// [jsonMatcher] Options to perform JSONPath content matching.
  /// [jsonPath] JSONPath within the response output pointing to the expected `ContentMatcher::content` to match against.
  UptimeCheckConfigContentMatcherJsonPathMatcher({
    this.jsonMatcher,
    required this.jsonPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonMatcher': ?jsonMatcher,
      'jsonPath': jsonPath,
    };
  }

  factory UptimeCheckConfigContentMatcherJsonPathMatcher.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigContentMatcherJsonPathMatcher(
      jsonMatcher: map['jsonMatcher'] == null ? null : (map['jsonMatcher']! as String).input(),
      jsonPath: (map['jsonPath'] as String).input(),
    );
  }
}

