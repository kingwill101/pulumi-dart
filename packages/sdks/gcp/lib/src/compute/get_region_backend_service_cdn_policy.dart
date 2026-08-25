// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_cdn_policy_cache_key_policy.dart';
import 'get_region_backend_service_cdn_policy_negative_caching_policy.dart';

class GetRegionBackendServiceCdnPolicy {
  /// The CacheKeyPolicy for this CdnPolicy.
  final pulumi.Input<List<GetRegionBackendServiceCdnPolicyCacheKeyPolicy>> cacheKeyPolicies;
  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: ["USE_ORIGIN_HEADERS", "FORCE_CACHE_ALL", "CACHE_ALL_STATIC"]
  final pulumi.Input<String> cacheMode;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final pulumi.Input<int> clientTtl;
  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age).
  final pulumi.Input<int> defaultTtl;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final pulumi.Input<int> maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final pulumi.Input<bool> negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  final pulumi.Input<List<GetRegionBackendServiceCdnPolicyNegativeCachingPolicy>> negativeCachingPolicies;
  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final pulumi.Input<int> serveWhileStale;
  /// Maximum number of seconds the response to a signed URL request
  /// will be considered fresh, defaults to 1hr (3600s). After this
  /// time period, the response will be revalidated before
  /// being served.
  ///
  /// When serving responses to signed URL requests, Cloud CDN will
  /// internally behave as though all responses from this backend had a
  /// "Cache-Control: public, max-age=[TTL]" header, regardless of any
  /// existing Cache-Control header. The actual headers served in
  /// responses will not be altered.
  final pulumi.Input<int> signedUrlCacheMaxAgeSec;

  /// Creates a new [GetRegionBackendServiceCdnPolicy].
  /// [cacheKeyPolicies] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend.
  /// [clientTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request
  const GetRegionBackendServiceCdnPolicy({
    required this.cacheKeyPolicies,
    required this.cacheMode,
    required this.clientTtl,
    required this.defaultTtl,
    required this.maxTtl,
    required this.negativeCaching,
    required this.negativeCachingPolicies,
    required this.serveWhileStale,
    required this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheKeyPolicies': pulumi.Input.mapInputValue<List<GetRegionBackendServiceCdnPolicyCacheKeyPolicy>, List<Map<String, dynamic>>>(cacheKeyPolicies, (value) => pulumi.Input.encodeList<GetRegionBackendServiceCdnPolicyCacheKeyPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheMode': cacheMode,
      'clientTtl': clientTtl,
      'defaultTtl': defaultTtl,
      'maxTtl': maxTtl,
      'negativeCaching': negativeCaching,
      'negativeCachingPolicies': pulumi.Input.mapInputValue<List<GetRegionBackendServiceCdnPolicyNegativeCachingPolicy>, List<Map<String, dynamic>>>(negativeCachingPolicies, (value) => pulumi.Input.encodeList<GetRegionBackendServiceCdnPolicyNegativeCachingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serveWhileStale': serveWhileStale,
      'signedUrlCacheMaxAgeSec': signedUrlCacheMaxAgeSec,
    };
  }

  factory GetRegionBackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceCdnPolicy(
      cacheKeyPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceCdnPolicyCacheKeyPolicy>(map['cacheKeyPolicies']!, (value) => GetRegionBackendServiceCdnPolicyCacheKeyPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      cacheMode: pulumi.Input.fromValue(map['cacheMode'] as String),
      clientTtl: pulumi.Input.fromValue((map['clientTtl'] as num).toInt()),
      defaultTtl: pulumi.Input.fromValue((map['defaultTtl'] as num).toInt()),
      maxTtl: pulumi.Input.fromValue((map['maxTtl'] as num).toInt()),
      negativeCaching: pulumi.Input.fromValue(map['negativeCaching'] as bool),
      negativeCachingPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceCdnPolicyNegativeCachingPolicy>(map['negativeCachingPolicies']!, (value) => GetRegionBackendServiceCdnPolicyNegativeCachingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      serveWhileStale: pulumi.Input.fromValue((map['serveWhileStale'] as num).toInt()),
      signedUrlCacheMaxAgeSec: pulumi.Input.fromValue((map['signedUrlCacheMaxAgeSec'] as num).toInt()),
    );
  }
}
