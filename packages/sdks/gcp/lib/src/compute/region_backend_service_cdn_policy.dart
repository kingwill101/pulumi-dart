// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_cdn_policy_cache_key_policy.dart';
import 'region_backend_service_cdn_policy_negative_caching_policy.dart';

class RegionBackendServiceCdnPolicy {
  /// The CacheKeyPolicy for this CdnPolicy.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceCdnPolicyCacheKeyPolicy>? cacheKeyPolicy;
  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
  /// Possible values are: `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `CACHE_ALL_STATIC`.
  final pulumi.Input<String>? cacheMode;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final pulumi.Input<int>? clientTtl;
  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age).
  final pulumi.Input<int>? defaultTtl;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final pulumi.Input<int>? maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final pulumi.Input<bool>? negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  /// Structure is documented below.
  final pulumi.Input<List<RegionBackendServiceCdnPolicyNegativeCachingPolicy>>? negativeCachingPolicies;
  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final pulumi.Input<int>? serveWhileStale;
  /// Maximum number of seconds the response to a signed URL request
  /// will be considered fresh, defaults to 1hr (3600s). After this
  /// time period, the response will be revalidated before
  /// being served.
  /// When serving responses to signed URL requests, Cloud CDN will
  /// internally behave as though all responses from this backend had a
  /// "Cache-Control: public, max-age=[TTL]" header, regardless of any
  /// existing Cache-Control header. The actual headers served in
  /// responses will not be altered.
  final pulumi.Input<int>? signedUrlCacheMaxAgeSec;

  /// Creates a new [RegionBackendServiceCdnPolicy].
  /// [cacheKeyPolicy] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend.
  /// [clientTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request
  const RegionBackendServiceCdnPolicy({
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicies,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheKeyPolicy': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceCdnPolicyCacheKeyPolicy, Map<String, dynamic>>(cacheKeyPolicy, (value) => value.toMap()),
      'cacheMode': ?cacheMode,
      'clientTtl': ?clientTtl,
      'defaultTtl': ?defaultTtl,
      'maxTtl': ?maxTtl,
      'negativeCaching': ?negativeCaching,
      'negativeCachingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RegionBackendServiceCdnPolicyNegativeCachingPolicy>, List<Map<String, dynamic>>>(negativeCachingPolicies, (value) => pulumi.Input.encodeList<RegionBackendServiceCdnPolicyNegativeCachingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serveWhileStale': ?serveWhileStale,
      'signedUrlCacheMaxAgeSec': ?signedUrlCacheMaxAgeSec,
    };
  }

  factory RegionBackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceCdnPolicy(
      cacheKeyPolicy: (() { final guardedValue = map['cacheKeyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceCdnPolicyCacheKeyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheMode: (() { final guardedValue = map['cacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientTtl: (() { final guardedValue = map['clientTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      negativeCaching: (() { final guardedValue = map['negativeCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negativeCachingPolicies: (() { final guardedValue = map['negativeCachingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionBackendServiceCdnPolicyNegativeCachingPolicy>(guardedValue, (value) => RegionBackendServiceCdnPolicyNegativeCachingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serveWhileStale: (() { final guardedValue = map['serveWhileStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      signedUrlCacheMaxAgeSec: (() { final guardedValue = map['signedUrlCacheMaxAgeSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
