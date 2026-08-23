// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedDataResponseHealthcareV1beta1 {
  /// JSON output of the parser.
  final pulumi.Input<String> data;
  /// The error output of the parser.
  final pulumi.Input<String> error;

  /// Creates a new [SchematizedDataResponseHealthcareV1beta1].
  /// [data] JSON output of the parser.
  /// [error] The error output of the parser.
  const SchematizedDataResponseHealthcareV1beta1({
    required this.data,
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'error': error,
    };
  }

  factory SchematizedDataResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SchematizedDataResponseHealthcareV1beta1(
      data: pulumi.Input.fromValue(map['data'] as String),
      error: pulumi.Input.fromValue(map['error'] as String),
    );
  }
}
