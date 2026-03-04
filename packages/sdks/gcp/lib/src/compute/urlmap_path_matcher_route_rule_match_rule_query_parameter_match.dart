// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch {
  /// The queryParameterMatch matches if the value of the parameter exactly matches
  /// the contents of exactMatch. Only one of presentMatch, exactMatch and regexMatch
  /// must be set.
  final pulumi.Input<String>? exactMatch;

  /// The name of the query parameter to match. The query parameter must exist in the
  /// request, in the absence of which the request match fails.
  final pulumi.Input<String> name;

  /// Specifies that the queryParameterMatch matches if the request contains the query
  /// parameter, irrespective of whether the parameter has a value or not. Only one of
  /// presentMatch, exactMatch and regexMatch must be set.
  final pulumi.Input<bool>? presentMatch;

  /// The queryParameterMatch matches if the value of the parameter matches the
  /// regular expression specified by regexMatch. For the regular expression grammar,
  /// please see en.cppreference.com/w/cpp/regex/ecmascript  Only one of presentMatch,
  /// exactMatch and regexMatch must be set.
  final pulumi.Input<String>? regexMatch;

  /// Creates a new [URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches
  /// [name] The name of the query parameter to match. The query parameter must exist in the
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query
  /// [regexMatch] The queryParameterMatch matches if the value of the parameter matches the
  URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch({
    this.exactMatch,
    required this.name,
    this.presentMatch,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'name': name,
      'presentMatch': ?presentMatch,
      'regexMatch': ?regexMatch,
    };
  }

  factory URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch(
      exactMatch: (() {
        final guardedValue = map['exactMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      presentMatch: (() {
        final guardedValue = map['presentMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      regexMatch: (() {
        final guardedValue = map['regexMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
