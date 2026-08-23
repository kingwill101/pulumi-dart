// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedDataResponse {
  /// JSON output of the parser.
  final pulumi.Input<String> data;
  /// The error output of the parser.
  final pulumi.Input<String> error;

  /// Creates a new [SchematizedDataResponse].
  /// [data] JSON output of the parser.
  /// [error] The error output of the parser.
  const SchematizedDataResponse({
    required this.data,
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'error': error,
    };
  }

  factory SchematizedDataResponse.fromMap(Map<String, dynamic> map) {
    return SchematizedDataResponse(
      data: pulumi.Input.fromValue(map['data'] as String),
      error: pulumi.Input.fromValue(map['error'] as String),
    );
  }
}
