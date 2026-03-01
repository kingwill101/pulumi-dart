// ignore_for_file: unused_element, unnecessary_cast


class GetBackendServiceCdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache. Values are case-insensitive.
  final String headerName;

  /// Creates a new [GetBackendServiceCdnPolicyBypassCacheOnRequestHeader].
  /// [headerName] The header field name to match on when bypassing cache. Values are case-insensitive.
  GetBackendServiceCdnPolicyBypassCacheOnRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory GetBackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCdnPolicyBypassCacheOnRequestHeader(
      headerName: map['headerName'] as String,
    );
  }
}

