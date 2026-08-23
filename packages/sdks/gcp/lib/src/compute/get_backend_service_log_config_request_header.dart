// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceLogConfigRequestHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [GetBackendServiceLogConfigRequestHeader].
  /// [headerName] The header name to match on for logging.
  const GetBackendServiceLogConfigRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory GetBackendServiceLogConfigRequestHeader.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLogConfigRequestHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
