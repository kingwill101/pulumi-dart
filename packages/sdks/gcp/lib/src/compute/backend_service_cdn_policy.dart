// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_cdn_policy_bypass_cache_on_request_header.dart';
import 'backend_service_cdn_policy_cache_key_policy.dart';
import 'backend_service_cdn_policy_negative_caching_policy.dart';

class BackendServiceCdnPolicy {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified.
  /// The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// Structure is documented below.
  final List<BackendServiceCdnPolicyBypassCacheOnRequestHeader>? bypassCacheOnRequestHeaders;
  /// The CacheKeyPolicy for this CdnPolicy.
  /// Structure is documented below.
  final BackendServiceCdnPolicyCacheKeyPolicy? cacheKeyPolicy;
  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
  /// Possible values are: `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `CACHE_ALL_STATIC`.
  final String? cacheMode;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final int? clientTtl;
  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age).
  final int? defaultTtl;
  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final int? maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final bool? negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  /// Structure is documented below.
  final List<BackendServiceCdnPolicyNegativeCachingPolicy>? negativeCachingPolicies;
  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests
  /// to the origin.
  final bool? requestCoalescing;
  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final int? serveWhileStale;
  /// Maximum number of seconds the response to a signed URL request
  /// will be considered fresh, defaults to 1hr (3600s). After this
  /// time period, the response will be revalidated before
  /// being served.
  /// When serving responses to signed URL requests, Cloud CDN will
  /// internally behave as though all responses from this backend had a
  /// "Cache-Control: public, max-age=[TTL]" header, regardless of any
  /// existing Cache-Control header. The actual headers served in
  /// responses will not be altered.
  final int? signedUrlCacheMaxAgeSec;

  /// Creates a new [BackendServiceCdnPolicy].
  /// [bypassCacheOnRequestHeaders] Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified.
  /// [cacheKeyPolicy] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend.
  /// [clientTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [requestCoalescing] If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request
  BackendServiceCdnPolicy({
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
      'bypassCacheOnRequestHeaders': ?bypassCacheOnRequestHeaders == null ? null : pulumi.Input.encodeList<BackendServiceCdnPolicyBypassCacheOnRequestHeader, Map<String, dynamic>>(bypassCacheOnRequestHeaders!, (value) => value.toMap()),
      'cacheKeyPolicy': ?cacheKeyPolicy == null ? null : cacheKeyPolicy!.toMap(),
      'cacheMode': ?cacheMode,
      'clientTtl': ?clientTtl,
      'defaultTtl': ?defaultTtl,
      'maxTtl': ?maxTtl,
      'negativeCaching': ?negativeCaching,
      'negativeCachingPolicies': ?negativeCachingPolicies == null ? null : pulumi.Input.encodeList<BackendServiceCdnPolicyNegativeCachingPolicy, Map<String, dynamic>>(negativeCachingPolicies!, (value) => value.toMap()),
      'requestCoalescing': ?requestCoalescing,
      'serveWhileStale': ?serveWhileStale,
      'signedUrlCacheMaxAgeSec': ?signedUrlCacheMaxAgeSec,
    };
  }

  factory BackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceCdnPolicy(
      bypassCacheOnRequestHeaders: map['bypassCacheOnRequestHeaders'] == null ? null : pulumi.Input.decodeList<BackendServiceCdnPolicyBypassCacheOnRequestHeader>(map['bypassCacheOnRequestHeaders'], (value) => BackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap((value as Map).cast<String, dynamic>())),
      cacheKeyPolicy: map['cacheKeyPolicy'] == null ? null : BackendServiceCdnPolicyCacheKeyPolicy.fromMap((map['cacheKeyPolicy'] as Map).cast<String, dynamic>()),
      cacheMode: map['cacheMode'] == null ? null : map['cacheMode'] as String,
      clientTtl: map['clientTtl'] == null ? null : map['clientTtl'] as int,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      maxTtl: map['maxTtl'] == null ? null : map['maxTtl'] as int,
      negativeCaching: map['negativeCaching'] == null ? null : map['negativeCaching'] as bool,
      negativeCachingPolicies: map['negativeCachingPolicies'] == null ? null : pulumi.Input.decodeList<BackendServiceCdnPolicyNegativeCachingPolicy>(map['negativeCachingPolicies'], (value) => BackendServiceCdnPolicyNegativeCachingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      requestCoalescing: map['requestCoalescing'] == null ? null : map['requestCoalescing'] as bool,
      serveWhileStale: map['serveWhileStale'] == null ? null : map['serveWhileStale'] as int,
      signedUrlCacheMaxAgeSec: map['signedUrlCacheMaxAgeSec'] == null ? null : map['signedUrlCacheMaxAgeSec'] as int,
    );
  }
}

