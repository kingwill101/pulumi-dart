// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify CDN TTLs for response error codes.
class BackendBucketCdnPolicyNegativeCachingPolicyResponseComputeBeta {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  final pulumi.Input<int> code;

  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final pulumi.Input<int> ttl;

  /// Creates a new [BackendBucketCdnPolicyNegativeCachingPolicyResponseComputeBeta].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  BackendBucketCdnPolicyNegativeCachingPolicyResponseComputeBeta({
    required this.code,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'ttl': ttl};
  }

  factory BackendBucketCdnPolicyNegativeCachingPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendBucketCdnPolicyNegativeCachingPolicyResponseComputeBeta(
      code: pulumi.Input.fromValue(map['code'] as int),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
    );
  }
}
