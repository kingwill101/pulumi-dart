// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendBucketCdnPolicyCacheKeyPolicy {
  /// Allows HTTP request headers (by name) to be used in the
  /// cache key.
  final pulumi.Input<List<String>>? includeHttpHeaders;
  /// Names of query string parameters to include in cache keys.
  /// Default parameters are always included. '&' and '=' will
  /// be percent encoded and not treated as delimiters.
  final pulumi.Input<List<String>>? queryStringWhitelists;

  /// Creates a new [BackendBucketCdnPolicyCacheKeyPolicy].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the
  /// [queryStringWhitelists] Names of query string parameters to include in cache keys.
  BackendBucketCdnPolicyCacheKeyPolicy({
    this.includeHttpHeaders,
    this.queryStringWhitelists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeHttpHeaders': ?includeHttpHeaders,
      'queryStringWhitelists': ?queryStringWhitelists,
    };
  }

  factory BackendBucketCdnPolicyCacheKeyPolicy.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicyCacheKeyPolicy(
      includeHttpHeaders: (() { final guardedValue = map['includeHttpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryStringWhitelists: (() { final guardedValue = map['queryStringWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

