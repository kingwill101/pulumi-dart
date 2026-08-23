// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceLogConfigResponseHeader {
  /// The header name to match on for logging.
  final pulumi.Input<String> headerName;

  /// Creates a new [BackendServiceLogConfigResponseHeader].
  /// [headerName] The header name to match on for logging.
  const BackendServiceLogConfigResponseHeader({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory BackendServiceLogConfigResponseHeader.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfigResponseHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
