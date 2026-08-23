// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_path_rule_route_action_cache_policy_negative_caching_policy_ttl.dart';

class URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against. Only HTTP status codes
  /// 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 can be
  /// specified as values, and you cannot specify a status code more than
  /// once.
  final pulumi.Input<int>? code;
  /// The TTL (in seconds) for which to cache responses with the
  /// corresponding status code. The maximum allowed value is 1800s (30
  /// minutes). Infrequently accessed objects may be evicted from the cache
  /// before the defined TTL.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicyTtl>? ttl;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes
  /// [ttl] The TTL (in seconds) for which to cache responses with the
  const URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'ttl': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicyTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicy(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherPathRuleRouteActionCachePolicyNegativeCachingPolicyTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
