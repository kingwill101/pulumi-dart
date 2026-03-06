// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final pulumi.Input<String> headerName;

  /// Creates a new [GetBackendServiceCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  const GetBackendServiceCdnPolicyBypassCacheOnRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory GetBackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCdnPolicyBypassCacheOnRequestHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}

