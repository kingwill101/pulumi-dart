// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Bypass the cache when the specified request headers are present, e.g. Pragma or Authorization headers. Values are case insensitive. The presence of such a header overrides the cache_mode setting.
class BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponse {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final pulumi.Input<String> headerName;

  /// Creates a new [BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponse].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponse({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'headerName': headerName};
  }

  factory BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendBucketCdnPolicyBypassCacheOnRequestHeaderResponse(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
