// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifications to match a query parameter in the request.
class HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1 {
  /// The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  final pulumi.Input<String> exactMatch;

  /// Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  final pulumi.Input<bool> presentMatch;

  /// The name of the query parameter to match.
  final pulumi.Input<String> queryParameter;

  /// The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  final pulumi.Input<String> regexMatch;

  /// Creates a new [HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1].
  /// [exactMatch] The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  /// [presentMatch] Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  /// [queryParameter] The name of the query parameter to match.
  /// [regexMatch] The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1({
    required this.exactMatch,
    required this.presentMatch,
    required this.queryParameter,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': exactMatch,
      'presentMatch': presentMatch,
      'queryParameter': queryParameter,
      'regexMatch': regexMatch,
    };
  }

  factory HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1(
      exactMatch: pulumi.Input.fromValue(map['exactMatch'] as String),
      presentMatch: pulumi.Input.fromValue(map['presentMatch'] as bool),
      queryParameter: pulumi.Input.fromValue(map['queryParameter'] as String),
      regexMatch: pulumi.Input.fromValue(map['regexMatch'] as String),
    );
  }
}
