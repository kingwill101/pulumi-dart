// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule_match_rule_header_match.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_match_rule_query_parameter_match.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule {
  /// For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL.
  final pulumi.Input<String>? fullPathMatch;
  /// Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch>>? headerMatches;
  /// Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  final pulumi.Input<bool>? ignoreCase;
  /// For satisfying the matchRule condition, the path of the request
  /// must match the wildcard pattern specified in pathTemplateMatch
  /// after removing any query parameters and anchor that may be part
  /// of the original URL.
  /// pathTemplateMatch must be between 1 and 255 characters
  /// (inclusive).  The pattern specified by pathTemplateMatch may
  /// have at most 5 wildcard operators and at most 5 variable
  /// captures in total.
  final pulumi.Input<String>? pathTemplateMatch;
  /// For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /.
  final pulumi.Input<String>? prefixMatch;
  /// Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch>>? queryParameterMatches;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule].
  /// [fullPathMatch] For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL.
  /// [headerMatches] Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  /// [ignoreCase] Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  /// [pathTemplateMatch] For satisfying the matchRule condition, the path of the request
  /// [prefixMatch] For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /.
  /// [queryParameterMatches] Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request.
  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule({
    this.fullPathMatch,
    this.headerMatches,
    this.ignoreCase,
    this.pathTemplateMatch,
    this.prefixMatch,
    this.queryParameterMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullPathMatch': ?fullPathMatch,
      'headerMatches': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch>, List<Map<String, dynamic>>>(headerMatches, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreCase': ?ignoreCase,
      'pathTemplateMatch': ?pathTemplateMatch,
      'prefixMatch': ?prefixMatch,
      'queryParameterMatches': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch>, List<Map<String, dynamic>>>(queryParameterMatches, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule(
      fullPathMatch: map['fullPathMatch'] == null ? null : (map['fullPathMatch']! as String).input(),
      headerMatches: map['headerMatches'] == null ? null : (pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch>(map['headerMatches']!, (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ignoreCase: map['ignoreCase'] == null ? null : (map['ignoreCase']! as bool).input(),
      pathTemplateMatch: map['pathTemplateMatch'] == null ? null : (map['pathTemplateMatch']! as String).input(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch']! as String).input(),
      queryParameterMatches: map['queryParameterMatches'] == null ? null : (pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch>(map['queryParameterMatches']!, (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

