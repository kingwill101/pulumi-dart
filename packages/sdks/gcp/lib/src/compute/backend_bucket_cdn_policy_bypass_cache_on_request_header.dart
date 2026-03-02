// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendBucketCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final pulumi.Input<String>? headerName;

  /// Creates a new [BackendBucketCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendBucketCdnPolicyBypassCacheOnRequestHeader({
    this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
    };
  }

  factory BackendBucketCdnPolicyBypassCacheOnRequestHeader.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] == null ? null : (map['headerName'] as String).input(),
    );
  }
}

