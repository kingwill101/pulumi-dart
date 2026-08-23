// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing what to include in the cache key for a request for Cloud CDN.
class BackendBucketCdnPolicyCacheKeyPolicyResponseComputeV1 {
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final pulumi.Input<List<String>> includeHttpHeaders;
  /// Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>> queryStringWhitelist;

  /// Creates a new [BackendBucketCdnPolicyCacheKeyPolicyResponseComputeV1].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  const BackendBucketCdnPolicyCacheKeyPolicyResponseComputeV1({
    required this.includeHttpHeaders,
    required this.queryStringWhitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHttpHeaders': includeHttpHeaders,
      'queryStringWhitelist': queryStringWhitelist,
    };
  }

  factory BackendBucketCdnPolicyCacheKeyPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicyCacheKeyPolicyResponseComputeV1(
      includeHttpHeaders: pulumi.Input.fromValue((map['includeHttpHeaders'] as List).cast<String>()),
      queryStringWhitelist: pulumi.Input.fromValue((map['queryStringWhitelist'] as List).cast<String>()),
    );
  }
}
