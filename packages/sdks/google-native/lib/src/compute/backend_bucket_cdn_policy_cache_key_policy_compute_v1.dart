// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message containing what to include in the cache key for a request for Cloud CDN.
class BackendBucketCdnPolicyCacheKeyPolicyComputeV1 {
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final pulumi.Input<List<String>>? includeHttpHeaders;

  /// Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>>? queryStringWhitelist;

  /// Creates a new [BackendBucketCdnPolicyCacheKeyPolicyComputeV1].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  BackendBucketCdnPolicyCacheKeyPolicyComputeV1({
    this.includeHttpHeaders,
    this.queryStringWhitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHttpHeaders': ?includeHttpHeaders,
      'queryStringWhitelist': ?queryStringWhitelist,
    };
  }

  factory BackendBucketCdnPolicyCacheKeyPolicyComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendBucketCdnPolicyCacheKeyPolicyComputeV1(
      includeHttpHeaders: (() {
        final guardedValue = map['includeHttpHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      queryStringWhitelist: (() {
        final guardedValue = map['queryStringWhitelist'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
