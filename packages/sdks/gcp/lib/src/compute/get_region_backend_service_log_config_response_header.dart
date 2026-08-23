// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceLogConfigResponseHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [GetRegionBackendServiceLogConfigResponseHeader].
  /// [headerName] The header name to match on for logging.
  const GetRegionBackendServiceLogConfigResponseHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory GetRegionBackendServiceLogConfigResponseHeader.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceLogConfigResponseHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
