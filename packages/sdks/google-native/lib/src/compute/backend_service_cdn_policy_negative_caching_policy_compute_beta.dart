// ignore_for_file: unused_element, unnecessary_cast


/// Specify CDN TTLs for response error codes.
class BackendServiceCdnPolicyNegativeCachingPolicyComputeBeta {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  final int? code;
  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int? ttl;

  /// Creates a new [BackendServiceCdnPolicyNegativeCachingPolicyComputeBeta].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  BackendServiceCdnPolicyNegativeCachingPolicyComputeBeta({
    this.code,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'ttl': ?ttl,
    };
  }

  factory BackendServiceCdnPolicyNegativeCachingPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceCdnPolicyNegativeCachingPolicyComputeBeta(
      code: map['code'] == null ? null : map['code'] as int,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}

