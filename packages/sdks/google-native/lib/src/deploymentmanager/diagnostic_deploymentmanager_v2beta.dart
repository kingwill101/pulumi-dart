// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_level_deploymentmanager_v2beta.dart';

class DiagnosticDeploymentmanagerV2beta {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final pulumi.Input<String>? field;
  /// Level to record this diagnostic.
  final pulumi.Input<DiagnosticLevelDeploymentmanagerV2beta>? level;

  /// Creates a new [DiagnosticDeploymentmanagerV2beta].
  /// [field] JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  /// [level] Level to record this diagnostic.
  const DiagnosticDeploymentmanagerV2beta({
    this.field,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'level': ?pulumi.Input.mapOptionalInputValue<DiagnosticLevelDeploymentmanagerV2beta, String>(level, (value) => value.wireValue),
    };
  }

  factory DiagnosticDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return DiagnosticDeploymentmanagerV2beta(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticLevelDeploymentmanagerV2beta.fromValue(guardedValue as String)); })(),
    );
  }
}
