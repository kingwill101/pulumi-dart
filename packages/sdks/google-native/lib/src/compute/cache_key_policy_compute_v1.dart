// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing what to include in the cache key for a request for Cloud CDN.
class CacheKeyPolicyComputeV1 {
  /// If true, requests to different hosts will be cached separately.
  final pulumi.Input<bool>? includeHost;
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final pulumi.Input<List<String>>? includeHttpHeaders;
  /// Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  final pulumi.Input<List<String>>? includeNamedCookies;
  /// If true, http and https requests will be cached separately.
  final pulumi.Input<bool>? includeProtocol;
  /// If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  final pulumi.Input<bool>? includeQueryString;
  /// Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>>? queryStringBlacklist;
  /// Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>>? queryStringWhitelist;

  /// Creates a new [CacheKeyPolicyComputeV1].
  /// [includeHost] If true, requests to different hosts will be cached separately.
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [includeNamedCookies] Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  /// [includeProtocol] If true, http and https requests will be cached separately.
  /// [includeQueryString] If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  /// [queryStringBlacklist] Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  CacheKeyPolicyComputeV1({
    this.includeHost,
    this.includeHttpHeaders,
    this.includeNamedCookies,
    this.includeProtocol,
    this.includeQueryString,
    this.queryStringBlacklist,
    this.queryStringWhitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHost': ?includeHost,
      'includeHttpHeaders': ?includeHttpHeaders,
      'includeNamedCookies': ?includeNamedCookies,
      'includeProtocol': ?includeProtocol,
      'includeQueryString': ?includeQueryString,
      'queryStringBlacklist': ?queryStringBlacklist,
      'queryStringWhitelist': ?queryStringWhitelist,
    };
  }

  factory CacheKeyPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return CacheKeyPolicyComputeV1(
      includeHost: map['includeHost'] == null ? null : (map['includeHost'] as bool).input(),
      includeHttpHeaders: map['includeHttpHeaders'] == null ? null : ((map['includeHttpHeaders'] as List).cast<String>()).input(),
      includeNamedCookies: map['includeNamedCookies'] == null ? null : ((map['includeNamedCookies'] as List).cast<String>()).input(),
      includeProtocol: map['includeProtocol'] == null ? null : (map['includeProtocol'] as bool).input(),
      includeQueryString: map['includeQueryString'] == null ? null : (map['includeQueryString'] as bool).input(),
      queryStringBlacklist: map['queryStringBlacklist'] == null ? null : ((map['queryStringBlacklist'] as List).cast<String>()).input(),
      queryStringWhitelist: map['queryStringWhitelist'] == null ? null : ((map['queryStringWhitelist'] as List).cast<String>()).input(),
    );
  }
}

