// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceLogConfigResponseHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [GetBackendServiceLogConfigResponseHeader].
  /// [headerName] The header name to match on for logging.
  const GetBackendServiceLogConfigResponseHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory GetBackendServiceLogConfigResponseHeader.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLogConfigResponseHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
