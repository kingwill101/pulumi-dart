// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteMapRuleActionParameter {
  /// A list of AS paths.
  final pulumi.Input<List<String>>? asPaths;
  /// A list of BGP communities.
  final pulumi.Input<List<String>>? communities;
  /// A list of route prefixes.
  final pulumi.Input<List<String>>? routePrefixes;

  /// Creates a new [RouteMapRuleActionParameter].
  /// [asPaths] A list of AS paths.
  /// [communities] A list of BGP communities.
  /// [routePrefixes] A list of route prefixes.
  RouteMapRuleActionParameter({
    this.asPaths,
    this.communities,
    this.routePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPaths': ?asPaths,
      'communities': ?communities,
      'routePrefixes': ?routePrefixes,
    };
  }

  factory RouteMapRuleActionParameter.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleActionParameter(
      asPaths: map['asPaths'] == null ? null : ((map['asPaths']! as List).cast<String>()).input(),
      communities: map['communities'] == null ? null : ((map['communities']! as List).cast<String>()).input(),
      routePrefixes: map['routePrefixes'] == null ? null : ((map['routePrefixes']! as List).cast<String>()).input(),
    );
  }
}

