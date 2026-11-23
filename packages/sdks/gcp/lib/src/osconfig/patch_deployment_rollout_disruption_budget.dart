// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentRolloutDisruptionBudget {
  /// Specifies a fixed value.
  final pulumi.Input<int?>? fixed;
  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final pulumi.Input<int?>? percentage;

  /// Creates a new [PatchDeploymentRolloutDisruptionBudget].
  /// [fixed] Specifies a fixed value.
  /// [percentage] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  const PatchDeploymentRolloutDisruptionBudget({
    this.fixed,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percentage': ?percentage,
    };
  }

  factory PatchDeploymentRolloutDisruptionBudget.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRolloutDisruptionBudget(
      fixed: (() { final guardedValue = map['fixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
