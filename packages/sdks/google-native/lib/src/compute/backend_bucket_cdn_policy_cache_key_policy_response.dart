// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing what to include in the cache key for a request for Cloud CDN.
class BackendBucketCdnPolicyCacheKeyPolicyResponse {
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final pulumi.Input<List<String>> includeHttpHeaders;
  /// Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>> queryStringWhitelist;

  /// Creates a new [BackendBucketCdnPolicyCacheKeyPolicyResponse].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  BackendBucketCdnPolicyCacheKeyPolicyResponse({
    required this.includeHttpHeaders,
    required this.queryStringWhitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHttpHeaders': includeHttpHeaders,
      'queryStringWhitelist': queryStringWhitelist,
    };
  }

  factory BackendBucketCdnPolicyCacheKeyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicyCacheKeyPolicyResponse(
      includeHttpHeaders: ((map['includeHttpHeaders'] as List).cast<String>()).input(),
      queryStringWhitelist: ((map['queryStringWhitelist'] as List).cast<String>()).input(),
    );
  }
}

