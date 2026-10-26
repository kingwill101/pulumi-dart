// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentRolloutDisruptionBudget {
  /// Specifies a fixed value.
  final pulumi.Input<int?>? fixed;
  /// Specifies the relative value defined as a percentage,
  /// which will be multiplied by a reference value.
  ///
  /// --------------------------------------------------------------------------------
  final pulumi.Input<int?>? percent;

  /// Creates a new [OsPolicyAssignmentRolloutDisruptionBudget].
  /// [fixed] Specifies a fixed value.
  /// [percent] Specifies the relative value defined as a percentage,
  const OsPolicyAssignmentRolloutDisruptionBudget({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percent': ?percent,
    };
  }

  factory OsPolicyAssignmentRolloutDisruptionBudget.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentRolloutDisruptionBudget(
      fixed: (() { final guardedValue = map['fixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
