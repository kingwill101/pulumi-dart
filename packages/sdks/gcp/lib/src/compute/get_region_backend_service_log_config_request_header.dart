// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceLogConfigRequestHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [GetRegionBackendServiceLogConfigRequestHeader].
  /// [headerName] The header name to match on for logging.
  const GetRegionBackendServiceLogConfigRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory GetRegionBackendServiceLogConfigRequestHeader.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceLogConfigRequestHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
