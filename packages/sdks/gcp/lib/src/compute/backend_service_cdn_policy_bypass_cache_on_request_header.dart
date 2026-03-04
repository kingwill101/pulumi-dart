// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final pulumi.Input<String> headerName;

  /// Creates a new [BackendServiceCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  BackendServiceCdnPolicyBypassCacheOnRequestHeader({required this.headerName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'headerName': headerName};
  }

  factory BackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceCdnPolicyBypassCacheOnRequestHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
