// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendBucketCdnPolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// can be specified as values, and you cannot specify a status code more than once.
  final pulumi.Input<int> code;
  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  /// (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final pulumi.Input<int> ttl;

  /// Creates a new [GetBackendBucketCdnPolicyNegativeCachingPolicy].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  const GetBackendBucketCdnPolicyNegativeCachingPolicy({
    required this.code,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'ttl': ttl,
    };
  }

  factory GetBackendBucketCdnPolicyNegativeCachingPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketCdnPolicyNegativeCachingPolicy(
      code: pulumi.Input.fromValue((map['code'] as num).toInt()),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
    );
  }
}
