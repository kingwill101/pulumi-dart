// ignore_for_file: unused_element, unnecessary_cast


/// Bypass the cache when the specified request headers are present, e.g. Pragma or Authorization headers. Values are case insensitive. The presence of such a header overrides the cache_mode setting.
class BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponseComputeV1 {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  /// Creates a new [BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponseComputeV1].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponseComputeV1({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponseComputeV1(
      headerName: map['headerName'] as String,
    );
  }
}

