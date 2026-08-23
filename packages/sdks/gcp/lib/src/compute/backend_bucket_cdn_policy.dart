// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy_bypass_cache_on_request_header.dart';
import 'backend_bucket_cdn_policy_cache_key_policy.dart';
import 'backend_bucket_cdn_policy_negative_caching_policy.dart';

class BackendBucketCdnPolicy {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// Structure is documented below.
  final pulumi.Input<List<BackendBucketCdnPolicyBypassCacheOnRequestHeader>>? bypassCacheOnRequestHeaders;
  /// The CacheKeyPolicy for this CdnPolicy.
  /// Structure is documented below.
  final pulumi.Input<BackendBucketCdnPolicyCacheKeyPolicy>? cacheKeyPolicy;
  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
  /// Possible values are: `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `CACHE_ALL_STATIC`.
  final pulumi.Input<String>? cacheMode;
  /// Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// `cacheMode` is set to "USE_ORIGIN_HEADERS", you must omit this field.
  final pulumi.Input<int>? clientTtl;
  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age). When the `cacheMode`
  /// is set to "USE_ORIGIN_HEADERS", you must omit this field.
  final pulumi.Input<int>? defaultTtl;
  /// Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// `cacheMode` is set to "USE_ORIGIN_HEADERS", you must omit this field.
  final pulumi.Input<int>? maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final pulumi.Input<bool>? negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  /// Structure is documented below.
  final pulumi.Input<List<BackendBucketCdnPolicyNegativeCachingPolicy>>? negativeCachingPolicies;
  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  final pulumi.Input<bool>? requestCoalescing;
  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final pulumi.Input<int>? serveWhileStale;
  /// Maximum number of seconds the response to a signed URL request will
  /// be considered fresh. After this time period,
  /// the response will be revalidated before being served.
  /// When serving responses to signed URL requests,
  /// Cloud CDN will internally behave as though
  /// all responses from this backend had a "Cache-Control: public,
  /// max-age=[TTL]" header, regardless of any existing Cache-Control
  /// header. The actual headers served in responses will not be altered.
  final pulumi.Input<int>? signedUrlCacheMaxAgeSec;

  /// Creates a new [BackendBucketCdnPolicy].
  /// [bypassCacheOnRequestHeaders] Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// [cacheKeyPolicy] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend.
  /// [clientTtl] Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [requestCoalescing] If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request will
  const BackendBucketCdnPolicy({
    this.bypassCacheOnRequestHeaders,
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicies,
    this.requestCoalescing,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassCacheOnRequestHeaders': ?pulumi.Input.mapOptionalInputValue<List<BackendBucketCdnPolicyBypassCacheOnRequestHeader>, List<Map<String, dynamic>>>(bypassCacheOnRequestHeaders, (value) => pulumi.Input.encodeList<BackendBucketCdnPolicyBypassCacheOnRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheKeyPolicy': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicyCacheKeyPolicy, Map<String, dynamic>>(cacheKeyPolicy, (value) => value.toMap()),
      'cacheMode': ?cacheMode,
      'clientTtl': ?clientTtl,
      'defaultTtl': ?defaultTtl,
      'maxTtl': ?maxTtl,
      'negativeCaching': ?negativeCaching,
      'negativeCachingPolicies': ?pulumi.Input.mapOptionalInputValue<List<BackendBucketCdnPolicyNegativeCachingPolicy>, List<Map<String, dynamic>>>(negativeCachingPolicies, (value) => pulumi.Input.encodeList<BackendBucketCdnPolicyNegativeCachingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCoalescing': ?requestCoalescing,
      'serveWhileStale': ?serveWhileStale,
      'signedUrlCacheMaxAgeSec': ?signedUrlCacheMaxAgeSec,
    };
  }

  factory BackendBucketCdnPolicy.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicy(
      bypassCacheOnRequestHeaders: (() { final guardedValue = map['bypassCacheOnRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendBucketCdnPolicyBypassCacheOnRequestHeader>(guardedValue, (value) => BackendBucketCdnPolicyBypassCacheOnRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cacheKeyPolicy: (() { final guardedValue = map['cacheKeyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketCdnPolicyCacheKeyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheMode: (() { final guardedValue = map['cacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientTtl: (() { final guardedValue = map['clientTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      negativeCaching: (() { final guardedValue = map['negativeCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negativeCachingPolicies: (() { final guardedValue = map['negativeCachingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendBucketCdnPolicyNegativeCachingPolicy>(guardedValue, (value) => BackendBucketCdnPolicyNegativeCachingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestCoalescing: (() { final guardedValue = map['requestCoalescing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serveWhileStale: (() { final guardedValue = map['serveWhileStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      signedUrlCacheMaxAgeSec: (() { final guardedValue = map['signedUrlCacheMaxAgeSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
