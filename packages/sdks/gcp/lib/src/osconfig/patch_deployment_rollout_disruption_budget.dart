// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentRolloutDisruptionBudget {
  /// Specifies a fixed value.
  final pulumi.Input<int>? fixed;
  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final pulumi.Input<int>? percentage;

  /// Creates a new [PatchDeploymentRolloutDisruptionBudget].
  /// [fixed] Specifies a fixed value.
  /// [percentage] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  PatchDeploymentRolloutDisruptionBudget({
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
      fixed: map['fixed'] == null ? null : (map['fixed'] as int).input(),
      percentage: map['percentage'] == null ? null : (map['percentage'] as int).input(),
    );
  }
}

