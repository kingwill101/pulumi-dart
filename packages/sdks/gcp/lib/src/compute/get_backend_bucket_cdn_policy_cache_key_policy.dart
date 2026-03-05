// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendBucketCdnPolicyCacheKeyPolicy {
  /// Allows HTTP request headers (by name) to be used in the
  /// cache key.
  final pulumi.Input<List<String>> includeHttpHeaders;
  /// Names of query string parameters to include in cache keys.
  /// Default parameters are always included. '&' and '=' will
  /// be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>> queryStringWhitelists;

  /// Creates a new [GetBackendBucketCdnPolicyCacheKeyPolicy].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the
  /// [queryStringWhitelists] Names of query string parameters to include in cache keys.
  GetBackendBucketCdnPolicyCacheKeyPolicy({
    required this.includeHttpHeaders,
    required this.queryStringWhitelists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHttpHeaders': includeHttpHeaders,
      'queryStringWhitelists': queryStringWhitelists,
    };
  }

  factory GetBackendBucketCdnPolicyCacheKeyPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketCdnPolicyCacheKeyPolicy(
      includeHttpHeaders: pulumi.Input.fromValue((map['includeHttpHeaders'] as List).cast<String>()),
      queryStringWhitelists: pulumi.Input.fromValue((map['queryStringWhitelists'] as List).cast<String>()),
    );
  }
}

