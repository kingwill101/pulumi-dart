// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_route_action_cache_policy_cache_key_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_cache_policy_client_ttl.dart';
import 'urlmap_path_matcher_route_rule_route_action_cache_policy_default_ttl.dart';
import 'urlmap_path_matcher_route_rule_route_action_cache_policy_max_ttl.dart';
import 'urlmap_path_matcher_route_rule_route_action_cache_policy_negative_caching_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_cache_policy_serve_while_stale.dart';

class URLMapPathMatcherRouteRuleRouteActionCachePolicy {
  /// Bypass the cache when the specified request headers are matched by name,
  /// e.g. Pragma or Authorization headers. Values are case-insensitive. Up to 5
  /// header names can be specified. The cache is bypassed for all cacheMode
  /// values.
  final pulumi.Input<List<String>?>? cacheBypassRequestHeaderNames;
  /// The cache key configuration. If not specified, the default behavior depends
  /// on the backend type: for Backend Services, the complete request URI is
  /// used; for Backend Buckets, the request URI is used without the protocol or
  /// host, and only query parameters known to Cloud Storage are included.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCachePolicyCacheKeyPolicy?>? cacheKeyPolicy;
  /// Specifies the cache setting for all responses from this route. If not
  /// specified, Cloud CDN uses CACHE_ALL_STATIC mode.
  /// Possible values are: `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `CACHE_ALL_STATIC`.
  final pulumi.Input<String?>? cacheMode;
  /// Specifies a separate client (e.g. browser client) maximum TTL for cached
  /// content. This is used to clamp the max-age (or Expires) value sent to the
  /// client. With FORCE_CACHE_ALL, the lesser of clientTtl and defaultTtl
  /// is used for the response max-age directive, along with a "public"
  /// directive. For cacheable content in CACHE_ALL_STATIC mode, clientTtl
  /// clamps the max-age from the origin (if specified), or else sets the
  /// response max-age directive to the lesser of the clientTtl and defaultTtl,
  /// and also ensures a "public" cache-control directive is present. The maximum
  /// allowed value is 31,622,400s (1 year). If not specified, Cloud CDN uses
  /// 3600s (1 hour) for CACHE_ALL_STATIC mode. Cannot exceed maxTtl.
  /// Cannot be specified when cacheMode is USE_ORIGIN_HEADERS.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCachePolicyClientTtl?>? clientTtl;
  /// Specifies the default TTL for cached content for responses that do not have
  /// an existing valid TTL (max-age or s-maxage). Setting a TTL of "0" means
  /// "always revalidate". The value of defaultTtl cannot be set to a value
  /// greater than that of maxTtl. When the cacheMode is set to
  /// FORCE_CACHE_ALL, the defaultTtl will overwrite the TTL set in all
  /// responses. The maximum allowed value is 31,622,400s (1 year). Infrequently
  /// accessed objects may be evicted from the cache before the defined TTL. If
  /// not specified, Cloud CDN uses 3600s (1 hour) for CACHE_ALL_STATIC and
  /// FORCE_CACHE_ALL modes. Cannot be specified when cacheMode is
  /// USE_ORIGIN_HEADERS.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCachePolicyDefaultTtl?>? defaultTtl;
  /// Specifies the maximum allowed TTL for cached content. Cache directives that
  /// attempt to set a max-age or s-maxage higher than this, or an Expires header
  /// more than maxTtl seconds in the future will be capped at the value of
  /// maxTtl, as if it were the value of an s-maxage Cache-Control directive.
  /// Headers sent to the client will not be modified. Setting a TTL of "0" means
  /// "always revalidate". The maximum allowed value is 31,622,400s (1 year).
  /// Infrequently accessed objects may be evicted from the cache before the
  /// defined TTL. If not specified, Cloud CDN uses 86400s (1 day) for
  /// CACHE_ALL_STATIC mode. Can be specified only for CACHE_ALL_STATIC cache
  /// mode.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCachePolicyMaxTtl?>? maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply
  /// fine-grained caching for common errors or redirects. This can reduce the
  /// load on your origin and improve end-user experience by reducing response
  /// latency. When the cacheMode is set to CACHE_ALL_STATIC or
  /// USE_ORIGIN_HEADERS, negative caching applies to responses with the
  /// specified response code that lack any Cache-Control, Expires, or
  /// Pragma: no-cache directives. When the cacheMode is set to
  /// FORCE_CACHE_ALL, negative caching applies to all responses with the
  /// specified response code, and overrides any caching headers. By default,
  /// Cloud CDN applies the following TTLs to these HTTP status codes:
  /// * 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m
  /// * 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s
  /// * 405 (Method Not Found), 501 (Not Implemented): 60s
  /// These defaults can be overridden in negativeCachingPolicy. If not
  /// specified, Cloud CDN applies negative caching by default.
  final pulumi.Input<bool?>? negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negativeCaching
  /// must be enabled to configure negativeCachingPolicy. Omitting the policy
  /// and leaving negativeCaching enabled will use Cloud CDN's default cache
  /// TTLs. Note that when specifying an explicit negativeCachingPolicy, you
  /// should take care to specify a cache TTL for all response codes that you
  /// wish to cache. Cloud CDN will not apply any default negative caching when
  /// a policy exists.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleRouteActionCachePolicyNegativeCachingPolicy>?>? negativeCachingPolicies;
  /// If true then Cloud CDN will combine multiple concurrent cache fill
  /// requests into a small number of requests to the origin. If not specified,
  /// Cloud CDN applies request coalescing by default.
  final pulumi.Input<bool?>? requestCoalescing;
  /// Serve existing content from the cache (if available) when revalidating
  /// content with the origin, or when an error is encountered when refreshing
  /// the cache. This setting defines the default "max-stale" duration for any
  /// cached responses that do not specify a max-stale directive. Stale
  /// responses that exceed the TTL configured here will not be served. The
  /// default limit (max-stale) is 86400s (1 day), which will allow stale
  /// content to be served up to this limit beyond the max-age (or s-maxage) of
  /// a cached response. The maximum allowed value is 604800 (1 week). Set this
  /// to zero (0) to disable serve-while-stale.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCachePolicyServeWhileStale?>? serveWhileStale;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionCachePolicy].
  /// [cacheBypassRequestHeaderNames] Bypass the cache when the specified request headers are matched by name,
  /// [cacheKeyPolicy] The cache key configuration. If not specified, the default behavior depends
  /// [cacheMode] Specifies the cache setting for all responses from this route. If not
  /// [clientTtl] Specifies a separate client (e.g. browser client) maximum TTL for cached
  /// [defaultTtl] Specifies the default TTL for cached content for responses that do not have
  /// [maxTtl] Specifies the maximum allowed TTL for cached content. Cache directives that
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching
  /// [requestCoalescing] If true then Cloud CDN will combine multiple concurrent cache fill
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating
  const URLMapPathMatcherRouteRuleRouteActionCachePolicy({
    this.cacheBypassRequestHeaderNames,
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicies,
    this.requestCoalescing,
    this.serveWhileStale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheBypassRequestHeaderNames': ?cacheBypassRequestHeaderNames,
      'cacheKeyPolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCachePolicyCacheKeyPolicy, Map<String, dynamic>>(cacheKeyPolicy, (value) => value.toMap()),
      'cacheMode': ?cacheMode,
      'clientTtl': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCachePolicyClientTtl, Map<String, dynamic>>(clientTtl, (value) => value.toMap()),
      'defaultTtl': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCachePolicyDefaultTtl, Map<String, dynamic>>(defaultTtl, (value) => value.toMap()),
      'maxTtl': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCachePolicyMaxTtl, Map<String, dynamic>>(maxTtl, (value) => value.toMap()),
      'negativeCaching': ?negativeCaching,
      'negativeCachingPolicies': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleRouteActionCachePolicyNegativeCachingPolicy>, List<Map<String, dynamic>>>(negativeCachingPolicies, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleRouteActionCachePolicyNegativeCachingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCoalescing': ?requestCoalescing,
      'serveWhileStale': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCachePolicyServeWhileStale, Map<String, dynamic>>(serveWhileStale, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionCachePolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionCachePolicy(
      cacheBypassRequestHeaderNames: (() { final guardedValue = map['cacheBypassRequestHeaderNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheKeyPolicy: (() { final guardedValue = map['cacheKeyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCachePolicyCacheKeyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheMode: (() { final guardedValue = map['cacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientTtl: (() { final guardedValue = map['clientTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCachePolicyClientTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCachePolicyDefaultTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCachePolicyMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      negativeCaching: (() { final guardedValue = map['negativeCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negativeCachingPolicies: (() { final guardedValue = map['negativeCachingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapPathMatcherRouteRuleRouteActionCachePolicyNegativeCachingPolicy>(guardedValue, (value) => URLMapPathMatcherRouteRuleRouteActionCachePolicyNegativeCachingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestCoalescing: (() { final guardedValue = map['requestCoalescing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serveWhileStale: (() { final guardedValue = map['serveWhileStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCachePolicyServeWhileStale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
