// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreviewFeatureRolloutOperationRolloutInput {
  /// Predefined rollout plans.
  /// Possible values are: `ROLLOUT_PLAN_FAST_ROLLOUT`.
  final pulumi.Input<String> predefinedRolloutPlan;

  /// Creates a new [PreviewFeatureRolloutOperationRolloutInput].
  /// [predefinedRolloutPlan] Predefined rollout plans.
  const PreviewFeatureRolloutOperationRolloutInput({
    required this.predefinedRolloutPlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRolloutPlan': predefinedRolloutPlan,
    };
  }

  factory PreviewFeatureRolloutOperationRolloutInput.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureRolloutOperationRolloutInput(
      predefinedRolloutPlan: pulumi.Input.fromValue(map['predefinedRolloutPlan'] as String),
    );
  }
}
