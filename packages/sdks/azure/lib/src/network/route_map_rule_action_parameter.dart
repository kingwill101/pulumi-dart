// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteMapRuleActionParameter {
  /// A list of AS paths.
  final pulumi.Input<List<String>?>? asPaths;
  /// A list of BGP communities.
  final pulumi.Input<List<String>?>? communities;
  /// A list of route prefixes.
  final pulumi.Input<List<String>?>? routePrefixes;

  /// Creates a new [RouteMapRuleActionParameter].
  /// [asPaths] A list of AS paths.
  /// [communities] A list of BGP communities.
  /// [routePrefixes] A list of route prefixes.
  const RouteMapRuleActionParameter({
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
      asPaths: (() { final guardedValue = map['asPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      communities: (() { final guardedValue = map['communities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      routePrefixes: (() { final guardedValue = map['routePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
