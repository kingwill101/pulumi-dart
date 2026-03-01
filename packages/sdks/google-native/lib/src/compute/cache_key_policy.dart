// ignore_for_file: unused_element, unnecessary_cast


/// Message containing what to include in the cache key for a request for Cloud CDN.
class CacheKeyPolicy {
  /// If true, requests to different hosts will be cached separately.
  final bool? includeHost;
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final List<String>? includeHttpHeaders;
  /// Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  final List<String>? includeNamedCookies;
  /// If true, http and https requests will be cached separately.
  final bool? includeProtocol;
  /// If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  final bool? includeQueryString;
  /// Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? queryStringBlacklist;
  /// Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? queryStringWhitelist;

  /// Creates a new [CacheKeyPolicy].
  /// [includeHost] If true, requests to different hosts will be cached separately.
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [includeNamedCookies] Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  /// [includeProtocol] If true, http and https requests will be cached separately.
  /// [includeQueryString] If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  /// [queryStringBlacklist] Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  CacheKeyPolicy({
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

  factory CacheKeyPolicy.fromMap(Map<String, dynamic> map) {
    return CacheKeyPolicy(
      includeHost: map['includeHost'] == null ? null : map['includeHost'] as bool,
      includeHttpHeaders: map['includeHttpHeaders'] == null ? null : (map['includeHttpHeaders'] as List).cast<String>(),
      includeNamedCookies: map['includeNamedCookies'] == null ? null : (map['includeNamedCookies'] as List).cast<String>(),
      includeProtocol: map['includeProtocol'] == null ? null : map['includeProtocol'] as bool,
      includeQueryString: map['includeQueryString'] == null ? null : map['includeQueryString'] as bool,
      queryStringBlacklist: map['queryStringBlacklist'] == null ? null : (map['queryStringBlacklist'] as List).cast<String>(),
      queryStringWhitelist: map['queryStringWhitelist'] == null ? null : (map['queryStringWhitelist'] as List).cast<String>(),
    );
  }
}

