// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticResponse {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final pulumi.Input<String> field;
  /// Level to record this diagnostic.
  final pulumi.Input<String> level;

  /// Creates a new [DiagnosticResponse].
  /// [field] JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  /// [level] Level to record this diagnostic.
  DiagnosticResponse({
    required this.field,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'level': level,
    };
  }

  factory DiagnosticResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticResponse(
      field: (map['field'] as String).input(),
      level: (map['level'] as String).input(),
    );
  }
}

