// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentRolloutDisruptionBudget {
  /// Specifies a fixed value.
  final pulumi.Input<int>? fixed;
  /// Specifies the relative value defined as a percentage,
  /// which will be multiplied by a reference value.
  ///
  /// --------------------------------------------------------------------------------
  final pulumi.Input<int>? percent;

  /// Creates a new [OsPolicyAssignmentRolloutDisruptionBudget].
  /// [fixed] Specifies a fixed value.
  /// [percent] Specifies the relative value defined as a percentage,
  OsPolicyAssignmentRolloutDisruptionBudget({
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
      fixed: (() { final guardedValue = map['fixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

