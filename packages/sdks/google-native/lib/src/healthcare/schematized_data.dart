// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedData {
  /// JSON output of the parser.
  final pulumi.Input<String>? data;
  /// The error output of the parser.
  final pulumi.Input<String>? error;

  /// Creates a new [SchematizedData].
  /// [data] JSON output of the parser.
  /// [error] The error output of the parser.
  SchematizedData({
    this.data,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'error': ?error,
    };
  }

  factory SchematizedData.fromMap(Map<String, dynamic> map) {
    return SchematizedData(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      error: map['error'] == null ? null : (map['error']! as String).input(),
    );
  }
}

