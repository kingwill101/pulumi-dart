// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceLogConfigRequestHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [BackendServiceLogConfigRequestHeader].
  /// [headerName] The header name to match on for logging.
  const BackendServiceLogConfigRequestHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory BackendServiceLogConfigRequestHeader.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfigRequestHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
