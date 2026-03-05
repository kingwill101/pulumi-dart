// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteMapRuleMatchCriterion {
  /// A list of AS paths which this criterion matches.
  final pulumi.Input<List<String>>? asPaths;
  /// A list of BGP communities which this criterion matches.
  final pulumi.Input<List<String>>? communities;
  /// The match condition to apply the rule of the Route Map. Possible values are `Contains`, `Equals`, `NotContains`, `NotEquals` and `Unknown`.
  final pulumi.Input<String> matchCondition;
  /// A list of route prefixes which this criterion matches.
  final pulumi.Input<List<String>>? routePrefixes;

  /// Creates a new [RouteMapRuleMatchCriterion].
  /// [asPaths] A list of AS paths which this criterion matches.
  /// [communities] A list of BGP communities which this criterion matches.
  /// [matchCondition] The match condition to apply the rule of the Route Map. Possible values are `Contains`, `Equals`, `NotContains`, `NotEquals` and `Unknown`.
  /// [routePrefixes] A list of route prefixes which this criterion matches.
  RouteMapRuleMatchCriterion({
    this.asPaths,
    this.communities,
    required this.matchCondition,
    this.routePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPaths': ?asPaths,
      'communities': ?communities,
      'matchCondition': matchCondition,
      'routePrefixes': ?routePrefixes,
    };
  }

  factory RouteMapRuleMatchCriterion.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleMatchCriterion(
      asPaths: (() { final guardedValue = map['asPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      communities: (() { final guardedValue = map['communities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchCondition: pulumi.Input.fromValue(map['matchCondition'] as String),
      routePrefixes: (() { final guardedValue = map['routePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

