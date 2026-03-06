// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeployParameters contains deploy parameters information.
class DeployParameters {
  /// Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  final pulumi.Input<Map<String, String>>? matchTargetLabels;
  /// Values are deploy parameters in key-value pairs.
  final pulumi.Input<Map<String, String>> values;

  /// Creates a new [DeployParameters].
  /// [matchTargetLabels] Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  /// [values] Values are deploy parameters in key-value pairs.
  const DeployParameters({
    this.matchTargetLabels,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchTargetLabels': ?matchTargetLabels,
      'values': values,
    };
  }

  factory DeployParameters.fromMap(Map<String, dynamic> map) {
    return DeployParameters(
      matchTargetLabels: (() { final guardedValue = map['matchTargetLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      values: pulumi.Input.fromValue((map['values'] as Map).cast<String, String>()),
    );
  }
}

