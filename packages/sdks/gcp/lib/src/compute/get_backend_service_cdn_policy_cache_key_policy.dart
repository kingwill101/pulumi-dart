// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceCdnPolicyCacheKeyPolicy {
  /// If true requests to different hosts will be cached separately.
  final pulumi.Input<bool> includeHost;
  /// Allows HTTP request headers (by name) to be used in the
  /// cache key.
  final pulumi.Input<List<String>> includeHttpHeaders;
  /// Names of cookies to include in cache keys.
  final pulumi.Input<List<String>> includeNamedCookies;
  /// If true, http and https requests will be cached separately.
  final pulumi.Input<bool> includeProtocol;
  /// If true, include query string parameters in the cache key
  /// according to query_string_whitelist and
  /// query_string_blacklist. If neither is set, the entire query
  /// string will be included.
  ///
  /// If false, the query string will be excluded from the cache
  /// key entirely.
  final pulumi.Input<bool> includeQueryString;
  /// Names of query string parameters to exclude in cache keys.
  ///
  /// All other parameters will be included. Either specify
  /// query_string_whitelist or query_string_blacklist, not both.
  /// '&' and '=' will be percent encoded and not treated as
  /// delimiters.
  final pulumi.Input<List<String>> queryStringBlacklists;
  /// Names of query string parameters to include in cache keys.
  ///
  /// All other parameters will be excluded. Either specify
  /// query_string_whitelist or query_string_blacklist, not both.
  /// '&' and '=' will be percent encoded and not treated as
  /// delimiters.
  final pulumi.Input<List<String>> queryStringWhitelists;

  /// Creates a new [GetBackendServiceCdnPolicyCacheKeyPolicy].
  /// [includeHost] If true requests to different hosts will be cached separately.
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the
  /// [includeNamedCookies] Names of cookies to include in cache keys.
  /// [includeProtocol] If true, http and https requests will be cached separately.
  /// [includeQueryString] If true, include query string parameters in the cache key
  /// [queryStringBlacklists] Names of query string parameters to exclude in cache keys.
  /// [queryStringWhitelists] Names of query string parameters to include in cache keys.
  GetBackendServiceCdnPolicyCacheKeyPolicy({
    required this.includeHost,
    required this.includeHttpHeaders,
    required this.includeNamedCookies,
    required this.includeProtocol,
    required this.includeQueryString,
    required this.queryStringBlacklists,
    required this.queryStringWhitelists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHost': includeHost,
      'includeHttpHeaders': includeHttpHeaders,
      'includeNamedCookies': includeNamedCookies,
      'includeProtocol': includeProtocol,
      'includeQueryString': includeQueryString,
      'queryStringBlacklists': queryStringBlacklists,
      'queryStringWhitelists': queryStringWhitelists,
    };
  }

  factory GetBackendServiceCdnPolicyCacheKeyPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCdnPolicyCacheKeyPolicy(
      includeHost: pulumi.Input.fromValue(map['includeHost'] as bool),
      includeHttpHeaders: pulumi.Input.fromValue((map['includeHttpHeaders'] as List).cast<String>()),
      includeNamedCookies: pulumi.Input.fromValue((map['includeNamedCookies'] as List).cast<String>()),
      includeProtocol: pulumi.Input.fromValue(map['includeProtocol'] as bool),
      includeQueryString: pulumi.Input.fromValue(map['includeQueryString'] as bool),
      queryStringBlacklists: pulumi.Input.fromValue((map['queryStringBlacklists'] as List).cast<String>()),
      queryStringWhitelists: pulumi.Input.fromValue((map['queryStringWhitelists'] as List).cast<String>()),
    );
  }
}

