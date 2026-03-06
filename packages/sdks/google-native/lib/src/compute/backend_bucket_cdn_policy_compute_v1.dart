// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy_bypass_cache_on_request_header_compute_v1.dart';
import 'backend_bucket_cdn_policy_cache_key_policy_compute_v1.dart';
import 'backend_bucket_cdn_policy_cache_mode_compute_v1.dart';
import 'backend_bucket_cdn_policy_negative_caching_policy_compute_v1.dart';

/// Message containing Cloud CDN configuration for a backend bucket.
class BackendBucketCdnPolicyComputeV1 {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  final pulumi.Input<List<BackendBucketCdnPolicyBypassCacheOnRequestHeaderComputeV1>>? bypassCacheOnRequestHeaders;
  /// The CacheKeyPolicy for this CdnPolicy.
  final pulumi.Input<BackendBucketCdnPolicyCacheKeyPolicyComputeV1>? cacheKeyPolicy;
  /// Specifies the cache setting for all responses from this backend. The possible values are: USE_ORIGIN_HEADERS Requires the origin to set valid caching headers to cache content. Responses without these headers will not be cached at Google's edge, and will require a full trip to the origin on every request, potentially impacting performance and increasing load on the origin server. FORCE_CACHE_ALL Cache all content, ignoring any "private", "no-store" or "no-cache" directives in Cache-Control response headers. Warning: this may result in Cloud CDN caching private, per-user (user identifiable) content. CACHE_ALL_STATIC Automatically cache static content, including common image formats, media (video and audio), and web assets (JavaScript and CSS). Requests and responses that are marked as uncacheable, as well as dynamic content (including HTML), will not be cached.
  final pulumi.Input<BackendBucketCdnPolicyCacheModeComputeV1>? cacheMode;
  /// Specifies a separate client (e.g. browser client) maximum TTL. This is used to clamp the max-age (or Expires) value sent to the client. With FORCE_CACHE_ALL, the lesser of client_ttl and default_ttl is used for the response max-age directive, along with a "public" directive. For cacheable content in CACHE_ALL_STATIC mode, client_ttl clamps the max-age from the origin (if specified), or else sets the response max-age directive to the lesser of the client_ttl and default_ttl, and also ensures a "public" cache-control directive is present. If a client TTL is not specified, a default value (1 hour) will be used. The maximum allowed value is 31,622,400s (1 year).
  final pulumi.Input<int>? clientTtl;
  /// Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age). Setting a TTL of "0" means "always revalidate". The value of defaultTTL cannot be set to a value greater than that of maxTTL, but can be equal. When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses. The maximum allowed value is 31,622,400s (1 year), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final pulumi.Input<int>? defaultTtl;
  /// Specifies the maximum allowed TTL for cached content served by this origin. Cache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTTL seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive. Headers sent to the client will not be modified. Setting a TTL of "0" means "always revalidate". The maximum allowed value is 31,622,400s (1 year), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final pulumi.Input<int>? maxTtl;
  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency. When the cache mode is set to CACHE_ALL_STATIC or USE_ORIGIN_HEADERS, negative caching applies to responses with the specified response code that lack any Cache-Control, Expires, or Pragma: no-cache directives. When the cache mode is set to FORCE_CACHE_ALL, negative caching applies to all responses with the specified response code, and override any caching headers. By default, Cloud CDN will apply the following default TTLs to these status codes: HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s HTTP 405 (Method Not Found), 421 (Misdirected Request), 501 (Not Implemented): 60s. These defaults can be overridden in negative_caching_policy.
  final pulumi.Input<bool>? negativeCaching;
  /// Sets a cache TTL for the specified HTTP status code. negative_caching must be enabled to configure negative_caching_policy. Omitting the policy and leaving negative_caching enabled will use Cloud CDN's default cache TTLs. Note that when specifying an explicit negative_caching_policy, you should take care to specify a cache TTL for all response codes that you wish to cache. Cloud CDN will not apply any default negative caching when a policy exists.
  final pulumi.Input<List<BackendBucketCdnPolicyNegativeCachingPolicyComputeV1>>? negativeCachingPolicy;
  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  final pulumi.Input<bool>? requestCoalescing;
  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. This setting defines the default "max-stale" duration for any cached responses that do not specify a max-stale directive. Stale responses that exceed the TTL configured here will not be served. The default limit (max-stale) is 86400s (1 day), which will allow stale content to be served up to this limit beyond the max-age (or s-max-age) of a cached response. The maximum allowed value is 604800 (1 week). Set this to zero (0) to disable serve-while-stale.
  final pulumi.Input<int>? serveWhileStale;
  /// Maximum number of seconds the response to a signed URL request will be considered fresh. After this time period, the response will be revalidated before being served. Defaults to 1hr (3600s). When serving responses to signed URL requests, Cloud CDN will internally behave as though all responses from this backend had a "Cache-Control: public, max-age=[TTL]" header, regardless of any existing Cache-Control header. The actual headers served in responses will not be altered.
  final pulumi.Input<String>? signedUrlCacheMaxAgeSec;

  /// Creates a new [BackendBucketCdnPolicyComputeV1].
  /// [bypassCacheOnRequestHeaders] Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// [cacheKeyPolicy] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend. The possible values are: USE_ORIGIN_HEADERS Requires the origin to set valid caching headers to cache content. Responses without these headers will not be cached at Google's edge, and will require a full trip to the origin on every request, potentially impacting performance and increasing load on the origin server. FORCE_CACHE_ALL Cache all content, ignoring any "private", "no-store" or "no-cache" directives in Cache-Control response headers. Warning: this may result in Cloud CDN caching private, per-user (user identifiable) content. CACHE_ALL_STATIC Automatically cache static content, including common image formats, media (video and audio), and web assets (JavaScript and CSS). Requests and responses that are marked as uncacheable, as well as dynamic content (including HTML), will not be cached.
  /// [clientTtl] Specifies a separate client (e.g. browser client) maximum TTL. This is used to clamp the max-age (or Expires) value sent to the client. With FORCE_CACHE_ALL, the lesser of client_ttl and default_ttl is used for the response max-age directive, along with a "public" directive. For cacheable content in CACHE_ALL_STATIC mode, client_ttl clamps the max-age from the origin (if specified), or else sets the response max-age directive to the lesser of the client_ttl and default_ttl, and also ensures a "public" cache-control directive is present. If a client TTL is not specified, a default value (1 hour) will be used. The maximum allowed value is 31,622,400s (1 year).
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age). Setting a TTL of "0" means "always revalidate". The value of defaultTTL cannot be set to a value greater than that of maxTTL, but can be equal. When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses. The maximum allowed value is 31,622,400s (1 year), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin. Cache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTTL seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive. Headers sent to the client will not be modified. Setting a TTL of "0" means "always revalidate". The maximum allowed value is 31,622,400s (1 year), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency. When the cache mode is set to CACHE_ALL_STATIC or USE_ORIGIN_HEADERS, negative caching applies to responses with the specified response code that lack any Cache-Control, Expires, or Pragma: no-cache directives. When the cache mode is set to FORCE_CACHE_ALL, negative caching applies to all responses with the specified response code, and override any caching headers. By default, Cloud CDN will apply the following default TTLs to these status codes: HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s HTTP 405 (Method Not Found), 421 (Misdirected Request), 501 (Not Implemented): 60s. These defaults can be overridden in negative_caching_policy.
  /// [negativeCachingPolicy] Sets a cache TTL for the specified HTTP status code. negative_caching must be enabled to configure negative_caching_policy. Omitting the policy and leaving negative_caching enabled will use Cloud CDN's default cache TTLs. Note that when specifying an explicit negative_caching_policy, you should take care to specify a cache TTL for all response codes that you wish to cache. Cloud CDN will not apply any default negative caching when a policy exists.
  /// [requestCoalescing] If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. This setting defines the default "max-stale" duration for any cached responses that do not specify a max-stale directive. Stale responses that exceed the TTL configured here will not be served. The default limit (max-stale) is 86400s (1 day), which will allow stale content to be served up to this limit beyond the max-age (or s-max-age) of a cached response. The maximum allowed value is 604800 (1 week). Set this to zero (0) to disable serve-while-stale.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request will be considered fresh. After this time period, the response will be revalidated before being served. Defaults to 1hr (3600s). When serving responses to signed URL requests, Cloud CDN will internally behave as though all responses from this backend had a "Cache-Control: public, max-age=[TTL]" header, regardless of any existing Cache-Control header. The actual headers served in responses will not be altered.
  const BackendBucketCdnPolicyComputeV1({
    this.bypassCacheOnRequestHeaders,
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicy,
    this.requestCoalescing,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassCacheOnRequestHeaders': ?pulumi.Input.mapOptionalInputValue<List<BackendBucketCdnPolicyBypassCacheOnRequestHeaderComputeV1>, List<Map<String, dynamic>>>(bypassCacheOnRequestHeaders, (value) => pulumi.Input.encodeList<BackendBucketCdnPolicyBypassCacheOnRequestHeaderComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheKeyPolicy': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicyCacheKeyPolicyComputeV1, Map<String, dynamic>>(cacheKeyPolicy, (value) => value.toMap()),
      'cacheMode': ?pulumi.Input.mapOptionalInputValue<BackendBucketCdnPolicyCacheModeComputeV1, String>(cacheMode, (value) => value.wireValue),
      'clientTtl': ?clientTtl,
      'defaultTtl': ?defaultTtl,
      'maxTtl': ?maxTtl,
      'negativeCaching': ?negativeCaching,
      'negativeCachingPolicy': ?pulumi.Input.mapOptionalInputValue<List<BackendBucketCdnPolicyNegativeCachingPolicyComputeV1>, List<Map<String, dynamic>>>(negativeCachingPolicy, (value) => pulumi.Input.encodeList<BackendBucketCdnPolicyNegativeCachingPolicyComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCoalescing': ?requestCoalescing,
      'serveWhileStale': ?serveWhileStale,
      'signedUrlCacheMaxAgeSec': ?signedUrlCacheMaxAgeSec,
    };
  }

  factory BackendBucketCdnPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicyComputeV1(
      bypassCacheOnRequestHeaders: (() { final guardedValue = map['bypassCacheOnRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendBucketCdnPolicyBypassCacheOnRequestHeaderComputeV1>(guardedValue, (value) => BackendBucketCdnPolicyBypassCacheOnRequestHeaderComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cacheKeyPolicy: (() { final guardedValue = map['cacheKeyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketCdnPolicyCacheKeyPolicyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheMode: (() { final guardedValue = map['cacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBucketCdnPolicyCacheModeComputeV1.fromValue(guardedValue as String)); })(),
      clientTtl: (() { final guardedValue = map['clientTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTtl: (() { final guardedValue = map['maxTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      negativeCaching: (() { final guardedValue = map['negativeCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negativeCachingPolicy: (() { final guardedValue = map['negativeCachingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendBucketCdnPolicyNegativeCachingPolicyComputeV1>(guardedValue, (value) => BackendBucketCdnPolicyNegativeCachingPolicyComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestCoalescing: (() { final guardedValue = map['requestCoalescing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serveWhileStale: (() { final guardedValue = map['serveWhileStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      signedUrlCacheMaxAgeSec: (() { final guardedValue = map['signedUrlCacheMaxAgeSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

