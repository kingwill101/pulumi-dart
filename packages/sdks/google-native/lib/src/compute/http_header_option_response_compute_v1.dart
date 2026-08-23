// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification determining how headers are added to requests or responses.
class HttpHeaderOptionResponseComputeV1 {
  /// The name of the header.
  final pulumi.Input<String> headerName;
  /// The value of the header to add.
  final pulumi.Input<String> headerValue;
  /// If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header. The default value is false.
  final pulumi.Input<bool> replace;

  /// Creates a new [HttpHeaderOptionResponseComputeV1].
  /// [headerName] The name of the header.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header. The default value is false.
  const HttpHeaderOptionResponseComputeV1({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'replace': replace,
    };
  }

  factory HttpHeaderOptionResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpHeaderOptionResponseComputeV1(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
      replace: pulumi.Input.fromValue(map['replace'] as bool),
    );
  }
}
