// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy {
  /// Names of query string parameters to exclude in cache keys. All other
  /// parameters will be included. Either specify excludedQueryParameters
  /// or includedQueryParameters, not both. '&' and '=' will be percent
  /// encoded and not treated as delimiters. Note: This field applies to
  /// routes that use backend services. Attempting to set it on a route that
  /// points exclusively to Backend Buckets will result in a configuration
  /// error. For routes that point to a Backend Bucket, use
  /// includedQueryParameters to define which parameters should be part of
  /// the cache key.
  final pulumi.Input<List<String>?>? excludedQueryParameters;
  /// If true, requests to different hosts will be cached separately. Note:
  /// This setting is only applicable to routes that use a Backend Service.
  /// It does not affect requests served by a Backend Bucket, as the host is
  /// never included in a Backend Bucket's cache key. Attempting to set it on
  /// a route that points exclusively to Backend Buckets will result in a
  /// configuration error.
  final pulumi.Input<bool?>? includeHost;
  /// If true, http and https requests will be cached separately. Note: This
  /// setting is only applicable to routes that use a Backend Service. It
  /// does not affect requests served by a Backend Bucket, as the protocol is
  /// never included in a Backend Bucket's cache key. Attempting to set on a
  /// route that points exclusively to Backend Buckets will result in a
  /// configuration error.
  final pulumi.Input<bool?>? includeProtocol;
  /// If true, include query string parameters in the cache key according to
  /// includedQueryParameters and excludedQueryParameters. If neither is
  /// set, the entire query string will be included. If false, the query
  /// string will be excluded from the cache key entirely. Note: This field
  /// applies to routes that use backend services. Attempting to set it on a
  /// route that points exclusively to Backend Buckets will result in a
  /// configuration error. For routes that point to a Backend Bucket, use
  /// includedQueryParameters to define which parameters should be part of
  /// the cache key.
  final pulumi.Input<bool?>? includeQueryString;
  /// Allows HTTP cookies (by name) to be used in the cache key. The
  /// name=value pair will be used in the cache key Cloud CDN generates.
  /// Note: This setting is only applicable to routes that use a Backend
  /// Service. It does not affect requests served by a Backend Bucket.
  /// Attempting to set it on a route that points exclusively to Backend
  /// Buckets will result in a configuration error. Up to 5 cookie names can
  /// be specified.
  final pulumi.Input<List<String>?>? includedCookieNames;
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final pulumi.Input<List<String>?>? includedHeaderNames;
  /// Names of query string parameters to include in cache keys. All other
  /// parameters will be excluded. Either specify includedQueryParameters
  /// or excludedQueryParameters, not both. '&' and '=' will be percent
  /// encoded and not treated as delimiters.
  final pulumi.Input<List<String>?>? includedQueryParameters;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy].
  /// [excludedQueryParameters] Names of query string parameters to exclude in cache keys. All other
  /// [includeHost] If true, requests to different hosts will be cached separately. Note:
  /// [includeProtocol] If true, http and https requests will be cached separately. Note: This
  /// [includeQueryString] If true, include query string parameters in the cache key according to
  /// [includedCookieNames] Allows HTTP cookies (by name) to be used in the cache key. The
  /// [includedHeaderNames] Allows HTTP request headers (by name) to be used in the cache key.
  /// [includedQueryParameters] Names of query string parameters to include in cache keys. All other
  const URLMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy({
    this.excludedQueryParameters,
    this.includeHost,
    this.includeProtocol,
    this.includeQueryString,
    this.includedCookieNames,
    this.includedHeaderNames,
    this.includedQueryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedQueryParameters': ?excludedQueryParameters,
      'includeHost': ?includeHost,
      'includeProtocol': ?includeProtocol,
      'includeQueryString': ?includeQueryString,
      'includedCookieNames': ?includedCookieNames,
      'includedHeaderNames': ?includedHeaderNames,
      'includedQueryParameters': ?includedQueryParameters,
    };
  }

  factory URLMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultRouteActionCachePolicyCacheKeyPolicy(
      excludedQueryParameters: (() { final guardedValue = map['excludedQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeHost: (() { final guardedValue = map['includeHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeProtocol: (() { final guardedValue = map['includeProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeQueryString: (() { final guardedValue = map['includeQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includedCookieNames: (() { final guardedValue = map['includedCookieNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedHeaderNames: (() { final guardedValue = map['includedHeaderNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedQueryParameters: (() { final guardedValue = map['includedQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
