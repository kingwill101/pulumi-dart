// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleMatchQueryParameter {
  /// The value of the query parameter must exactly match the contents of exactMatch.
  final pulumi.Input<String>? exactMatch;
  /// Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not.
  final pulumi.Input<bool>? presentMatch;
  /// The name of the query parameter to match.
  final pulumi.Input<String>? queryParameter;
  /// The value of the query parameter must match the regular expression specified by regexMatch.For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? regexMatch;

  /// Creates a new [HttpRouteRuleMatchQueryParameter].
  /// [exactMatch] The value of the query parameter must exactly match the contents of exactMatch.
  /// [presentMatch] Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not.
  /// [queryParameter] The name of the query parameter to match.
  /// [regexMatch] The value of the query parameter must match the regular expression specified by regexMatch.For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  HttpRouteRuleMatchQueryParameter({
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

  factory HttpRouteRuleMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchQueryParameter(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presentMatch: (() { final guardedValue = map['presentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryParameter: (() { final guardedValue = map['queryParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

