// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cdn_policy_add_signatures.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cdn_policy_cache_key_policy.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cdn_policy_signed_token_options.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy {
  /// Enable signature generation or propagation on this route.
  /// This field may only be specified when signedRequestMode is set to REQUIRE_TOKENS.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures>? addSignatures;
  /// Defines the request parameters that contribute to the cache key.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy>? cacheKeyPolicy;
  /// Cache modes allow users to control the behaviour of the cache, what content it should cache automatically, whether to respect origin headers, or whether to unconditionally cache all responses.
  /// For all cache modes, Cache-Control headers will be passed to the client. Use clientTtl to override what is sent to the client.
  /// Possible values are: `CACHE_ALL_STATIC`, `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `BYPASS_CACHE`.
  final pulumi.Input<String>? cacheMode;
  /// Specifies a separate client (e.g. browser client) TTL, separate from the TTL used by the edge caches. Leaving this empty will use the same cache TTL for both the CDN and the client-facing response.
  /// - The TTL must be &gt; 0 and &lt;= 86400s (1 day)
  /// - The clientTtl cannot be larger than the defaultTtl (if set)
  /// - Fractions of a second are not allowed.
  /// Omit this field to use the defaultTtl, or the max-age set by the origin, as the client-facing TTL.
  /// When the cache mode is set to "USE_ORIGIN_HEADERS" or "BYPASS_CACHE", you must omit this field.
  /// A duration in seconds terminated by 's'. Example: "3s".
  final pulumi.Input<String>? clientTtl;
  /// Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age).
  /// Defaults to 3600s (1 hour).
  /// - The TTL must be &gt;= 0 and &lt;= 31,536,000 seconds (1 year)
  /// - Setting a TTL of "0" means "always revalidate" (equivalent to must-revalidate)
  /// - The value of defaultTTL cannot be set to a value greater than that of maxTTL.
  /// - Fractions of a second are not allowed.
  /// - When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses.
  /// Note that infrequently accessed objects may be evicted from the cache before the defined TTL. Objects that expire will be revalidated with the origin.
  /// When the cache mode is set to "USE_ORIGIN_HEADERS" or "BYPASS_CACHE", you must omit this field.
  /// A duration in seconds terminated by 's'. Example: "3s".
  final pulumi.Input<String>? defaultTtl;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  /// Defaults to 86400s (1 day).
  /// Cache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTtl seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive.
  /// - The TTL must be &gt;= 0 and &lt;= 31,536,000 seconds (1 year)
  /// - Setting a TTL of "0" means "always revalidate"
  /// - The value of maxTtl must be equal to or greater than defaultTtl.
  /// - Fractions of a second are not allowed.
  /// When the cache mode is set to "USE_ORIGIN_HEADERS", "FORCE_CACHE_ALL", or "BYPASS_CACHE", you must omit this field.
  /// A duration in seconds terminated by 's'. Example: "3s".
  final pulumi.Input<String>? maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency.
  /// By default, the CDNPolicy will apply the following default TTLs to these status codes:
  /// - HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m
  /// - HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s
  /// - HTTP 405 (Method Not Found), 414 (URI Too Long), 501 (Not Implemented): 60s
  /// These defaults can be overridden in negativeCachingPolicy
  final pulumi.Input<bool>? negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// - Omitting the policy and leaving negativeCaching enabled will use the default TTLs for each status code, defined in negativeCaching.
  /// - TTLs must be &gt;= 0 (where 0 is "always revalidate") and &lt;= 86400s (1 day)
  /// Note that when specifying an explicit negativeCachingPolicy, you should take care to specify a cache TTL for all response codes that you wish to cache. The CDNPolicy will not apply any default negative caching when a policy exists.
  final pulumi.Input<Map<String, String>>? negativeCachingPolicy;
  /// The EdgeCacheKeyset containing the set of public keys used to validate signed requests at the edge.
  final pulumi.Input<String>? signedRequestKeyset;
  /// Limit how far into the future the expiration time of a signed request may be.
  /// When set, a signed request is rejected if its expiration time is later than now + signedRequestMaximumExpirationTtl, where now is the time at which the signed request is first handled by the CDN.
  /// - The TTL must be &gt; 0.
  /// - Fractions of a second are not allowed.
  /// By default, signedRequestMaximumExpirationTtl is not set and the expiration time of a signed request may be arbitrarily far into future.
  final pulumi.Input<String>? signedRequestMaximumExpirationTtl;
  /// Whether to enforce signed requests. The default value is DISABLED, which means all content is public, and does not authorize access.
  /// You must also set a signedRequestKeyset to enable signed requests.
  /// When set to REQUIRE_SIGNATURES, all matching requests will have their signature validated. Requests that were not signed with the corresponding private key, or that are otherwise invalid (expired, do not match the signature, IP address, or header) will be rejected with a HTTP 403 and (if enabled) logged.
  /// Possible values are: `DISABLED`, `REQUIRE_SIGNATURES`, `REQUIRE_TOKENS`.
  final pulumi.Input<String>? signedRequestMode;
  /// Additional options for signed tokens.
  /// signedTokenOptions may only be specified when signedRequestMode is REQUIRE_TOKENS.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions>? signedTokenOptions;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy].
  /// [addSignatures] Enable signature generation or propagation on this route.
  /// [cacheKeyPolicy] Defines the request parameters that contribute to the cache key.
  /// [cacheMode] Cache modes allow users to control the behaviour of the cache, what content it should cache automatically, whether to respect origin headers, or whether to unconditionally cache all responses.
  /// [clientTtl] Specifies a separate client (e.g. browser client) TTL, separate from the TTL used by the edge caches. Leaving this empty will use the same cache TTL for both the CDN and the client-facing response.
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age).
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency.
  /// [negativeCachingPolicy] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [signedRequestKeyset] The EdgeCacheKeyset containing the set of public keys used to validate signed requests at the edge.
  /// [signedRequestMaximumExpirationTtl] Limit how far into the future the expiration time of a signed request may be.
  /// [signedRequestMode] Whether to enforce signed requests. The default value is DISABLED, which means all content is public, and does not authorize access.
  /// [signedTokenOptions] Additional options for signed tokens.
  const EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy({
    this.addSignatures,
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicy,
    this.signedRequestKeyset,
    this.signedRequestMaximumExpirationTtl,
    this.signedRequestMode,
    this.signedTokenOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addSignatures': ?pulumi.Input.mapOptionalInputValue<EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures, Map<String, dynamic>>(addSignatures, (value) => value.toMap()),
      'cacheKeyPolicy': ?pulumi.Input.mapOptionalInputValue<EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy, Map<String, dynamic>>(cacheKeyPolicy, (value) => value.toMap()),
      'cacheMode': ?cacheMode,
      'clientTtl': ?clientTtl,
      'defaultTtl': ?defaultTtl,
      'maxTtl': ?maxTtl,
      'negativeCaching': ?negativeCaching,
      'negativeCachingPolicy': ?negativeCachingPolicy,
      'signedRequestKeyset': ?signedRequestKeyset,
      'signedRequestMaximumExpirationTtl': ?signedRequestMaximumExpirationTtl,
      'signedRequestMode': ?signedRequestMode,
      'signedTokenOptions': ?pulumi.Input.mapOptionalInputValue<EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions, Map<String, dynamic>>(signedTokenOptions, (value) => value.toMap()),
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy(
      addSignatures: (() { final guardedValue = map['addSignatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyAddSignatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheKeyPolicy: (() { final guardedValue = map['cacheKeyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheMode: (() { final guardedValue = map['cacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientTtl: (() { final guardedValue = map['clientTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      negativeCaching: (() { final guardedValue = map['negativeCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negativeCachingPolicy: (() { final guardedValue = map['negativeCachingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      signedRequestKeyset: (() { final guardedValue = map['signedRequestKeyset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signedRequestMaximumExpirationTtl: (() { final guardedValue = map['signedRequestMaximumExpirationTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signedRequestMode: (() { final guardedValue = map['signedRequestMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signedTokenOptions: (() { final guardedValue = map['signedTokenOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

