// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch.
  final pulumi.Input<String>? exactMatch;
  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final pulumi.Input<String> name;
  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not.
  final pulumi.Input<bool>? presentMatch;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch.
  /// [name] The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not.
  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch({
    this.exactMatch,
    required this.name,
    this.presentMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'name': name,
      'presentMatch': ?presentMatch,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch(
      exactMatch: map['exactMatch'] == null ? null : (map['exactMatch'] as String).input(),
      name: (map['name'] as String).input(),
      presentMatch: map['presentMatch'] == null ? null : (map['presentMatch'] as bool).input(),
    );
  }
}

