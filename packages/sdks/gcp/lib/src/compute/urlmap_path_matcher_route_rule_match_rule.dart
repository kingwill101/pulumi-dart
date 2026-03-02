// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_match_rule_header_match.dart';
import 'urlmap_path_matcher_route_rule_match_rule_metadata_filter.dart';
import 'urlmap_path_matcher_route_rule_match_rule_query_parameter_match.dart';

class URLMapPathMatcherRouteRuleMatchRule {
  /// For satisfying the matchRule condition, the path of the request must exactly
  /// match the value specified in fullPathMatch after removing any query parameters
  /// and anchor that may be part of the original URL. FullPathMatch must be between 1
  /// and 1024 characters. Only one of prefixMatch, fullPathMatch or regexMatch must
  /// be specified.
  final pulumi.Input<String>? fullPathMatch;
  /// Specifies a list of header match criteria, all of which must match corresponding
  /// headers in the request.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleMatchRuleHeaderMatch>>? headerMatches;
  /// Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  /// Defaults to false.
  final pulumi.Input<bool>? ignoreCase;
  /// Opaque filter criteria used by Loadbalancer to restrict routing configuration to
  /// a limited set xDS compliant clients. In their xDS requests to Loadbalancer, xDS
  /// clients present node metadata. If a match takes place, the relevant routing
  /// configuration is made available to those proxies. For each metadataFilter in
  /// this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the
  /// filterLabels must match the corresponding label provided in the metadata. If its
  /// filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match
  /// with corresponding labels in the provided metadata. metadataFilters specified
  /// here can be overrides those specified in ForwardingRule that refers to this
  /// UrlMap. metadataFilters only applies to Loadbalancers that have their
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleMatchRuleMetadataFilter>>? metadataFilters;
  /// For satisfying the matchRule condition, the path of the request
  /// must match the wildcard pattern specified in pathTemplateMatch
  /// after removing any query parameters and anchor that may be part
  /// of the original URL.
  /// pathTemplateMatch must be between 1 and 255 characters
  /// (inclusive).  The pattern specified by pathTemplateMatch may
  /// have at most 5 wildcard operators and at most 5 variable
  /// captures in total.
  final pulumi.Input<String>? pathTemplateMatch;
  /// For satisfying the matchRule condition, the request's path must begin with the
  /// specified prefixMatch. prefixMatch must begin with a /. The value must be
  /// between 1 and 1024 characters. Only one of prefixMatch, fullPathMatch or
  /// regexMatch must be specified.
  final pulumi.Input<String>? prefixMatch;
  /// Specifies a list of query parameter match criteria, all of which must match
  /// corresponding query parameters in the request.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch>>? queryParameterMatches;
  /// For satisfying the matchRule condition, the path of the request must satisfy the
  /// regular expression specified in regexMatch after removing any query parameters
  /// and anchor supplied with the original URL. For regular expression grammar please
  /// see en.cppreference.com/w/cpp/regex/ecmascript  Only one of prefixMatch,
  /// fullPathMatch or regexMatch must be specified.
  final pulumi.Input<String>? regexMatch;

  /// Creates a new [URLMapPathMatcherRouteRuleMatchRule].
  /// [fullPathMatch] For satisfying the matchRule condition, the path of the request must exactly
  /// [headerMatches] Specifies a list of header match criteria, all of which must match corresponding
  /// [ignoreCase] Specifies that prefixMatch and fullPathMatch matches are case sensitive.
  /// [metadataFilters] Opaque filter criteria used by Loadbalancer to restrict routing configuration to
  /// [pathTemplateMatch] For satisfying the matchRule condition, the path of the request
  /// [prefixMatch] For satisfying the matchRule condition, the request's path must begin with the
  /// [queryParameterMatches] Specifies a list of query parameter match criteria, all of which must match
  /// [regexMatch] For satisfying the matchRule condition, the path of the request must satisfy the
  URLMapPathMatcherRouteRuleMatchRule({
    this.fullPathMatch,
    this.headerMatches,
    this.ignoreCase,
    this.metadataFilters,
    this.pathTemplateMatch,
    this.prefixMatch,
    this.queryParameterMatches,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullPathMatch': ?fullPathMatch,
      'headerMatches': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleMatchRuleHeaderMatch>, List<Map<String, dynamic>>>(headerMatches, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleMatchRuleHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreCase': ?ignoreCase,
      'metadataFilters': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleMatchRuleMetadataFilter>, List<Map<String, dynamic>>>(metadataFilters, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleMatchRuleMetadataFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathTemplateMatch': ?pathTemplateMatch,
      'prefixMatch': ?prefixMatch,
      'queryParameterMatches': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch>, List<Map<String, dynamic>>>(queryParameterMatches, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexMatch': ?regexMatch,
    };
  }

  factory URLMapPathMatcherRouteRuleMatchRule.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleMatchRule(
      fullPathMatch: map['fullPathMatch'] == null ? null : (map['fullPathMatch']! as String).input(),
      headerMatches: map['headerMatches'] == null ? null : (pulumi.Input.decodeList<URLMapPathMatcherRouteRuleMatchRuleHeaderMatch>(map['headerMatches']!, (value) => URLMapPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ignoreCase: map['ignoreCase'] == null ? null : (map['ignoreCase']! as bool).input(),
      metadataFilters: map['metadataFilters'] == null ? null : (pulumi.Input.decodeList<URLMapPathMatcherRouteRuleMatchRuleMetadataFilter>(map['metadataFilters']!, (value) => URLMapPathMatcherRouteRuleMatchRuleMetadataFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pathTemplateMatch: map['pathTemplateMatch'] == null ? null : (map['pathTemplateMatch']! as String).input(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch']! as String).input(),
      queryParameterMatches: map['queryParameterMatches'] == null ? null : (pulumi.Input.decodeList<URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch>(map['queryParameterMatches']!, (value) => URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regexMatch: map['regexMatch'] == null ? null : (map['regexMatch']! as String).input(),
    );
  }
}

