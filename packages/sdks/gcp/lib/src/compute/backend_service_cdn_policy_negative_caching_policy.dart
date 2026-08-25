// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceCdnPolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// can be specified as values, and you cannot specify a status code more than once.
  final pulumi.Input<int?>? code;
  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  /// (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final pulumi.Input<int?>? ttl;

  /// Creates a new [BackendServiceCdnPolicyNegativeCachingPolicy].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  const BackendServiceCdnPolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'ttl': ?ttl,
    };
  }

  factory BackendServiceCdnPolicyNegativeCachingPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceCdnPolicyNegativeCachingPolicy(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
