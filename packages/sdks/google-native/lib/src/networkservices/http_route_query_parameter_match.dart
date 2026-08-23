// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifications to match a query parameter in the request.
class HttpRouteQueryParameterMatch {
  /// The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  final pulumi.Input<String>? exactMatch;
  /// Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  final pulumi.Input<bool>? presentMatch;
  /// The name of the query parameter to match.
  final pulumi.Input<String>? queryParameter;
  /// The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  final pulumi.Input<String>? regexMatch;

  /// Creates a new [HttpRouteQueryParameterMatch].
  /// [exactMatch] The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  /// [presentMatch] Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  /// [queryParameter] The name of the query parameter to match.
  /// [regexMatch] The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  const HttpRouteQueryParameterMatch({
    this.exactMatch,
    this.presentMatch,
    this.queryParameter,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'presentMatch': ?presentMatch,
      'queryParameter': ?queryParameter,
      'regexMatch': ?regexMatch,
    };
  }

  factory HttpRouteQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteQueryParameterMatch(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presentMatch: (() { final guardedValue = map['presentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryParameter: (() { final guardedValue = map['queryParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
