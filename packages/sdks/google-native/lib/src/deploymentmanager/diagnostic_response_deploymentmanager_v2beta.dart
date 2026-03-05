// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticResponseDeploymentmanagerV2beta {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final pulumi.Input<String> field;
  /// Level to record this diagnostic.
  final pulumi.Input<String> level;

  /// Creates a new [DiagnosticResponseDeploymentmanagerV2beta].
  /// [field] JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  /// [level] Level to record this diagnostic.
  DiagnosticResponseDeploymentmanagerV2beta({
    required this.field,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'level': level,
    };
  }

  factory DiagnosticResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return DiagnosticResponseDeploymentmanagerV2beta(
      field: pulumi.Input.fromValue(map['field'] as String),
      level: pulumi.Input.fromValue(map['level'] as String),
    );
  }
}

