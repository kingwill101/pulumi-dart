// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigTransformationErrorHandling {
  /// Ignore errors
  final pulumi.Input<Map<String, dynamic>?>? leaveUntransformed;
  /// Throw an error
  final pulumi.Input<Map<String, dynamic>?>? throwError;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigTransformationErrorHandling].
  /// [leaveUntransformed] Ignore errors
  /// [throwError] Throw an error
  const PreventionDeidentifyTemplateDeidentifyConfigTransformationErrorHandling({
    this.leaveUntransformed,
    this.throwError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leaveUntransformed': ?leaveUntransformed,
      'throwError': ?throwError,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigTransformationErrorHandling.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigTransformationErrorHandling(
      leaveUntransformed: (() { final guardedValue = map['leaveUntransformed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      throwError: (() { final guardedValue = map['throwError']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
