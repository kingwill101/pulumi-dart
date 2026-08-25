// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalVmExtensionPolicyRolloutOperationRolloutInput {
  /// Specifies the behavior of the rollout if a conflict is detected.
  final pulumi.Input<String?>? conflictBehavior;
  /// The name of the rollout plan.
  final pulumi.Input<String?>? name;
  /// Specifies the predefined rollout plan for the policy.
  final pulumi.Input<String?>? predefinedRolloutPlan;
  /// The UUID that identifies a policy rollout retry attempt. It should only be set when retrying an existing rollout. Updating this field along with other policy fields (description, extension_policies, instance_selectors, priority) in the same plan will return an error.
  ///
  /// &lt;a name="nestedRolloutOperationRolloutStatus"&gt;&lt;/a&gt;The `rolloutStatus` block contains:
  final pulumi.Input<String?>? retryUuid;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperationRolloutInput].
  /// [conflictBehavior] Specifies the behavior of the rollout if a conflict is detected.
  /// [name] The name of the rollout plan.
  /// [predefinedRolloutPlan] Specifies the predefined rollout plan for the policy.
  /// [retryUuid] The UUID that identifies a policy rollout retry attempt. It should only be set when retrying an existing rollout. Updating this field along with other policy fields (description, extension_policies, instance_selectors, priority) in the same plan will return an error.
  const GlobalVmExtensionPolicyRolloutOperationRolloutInput({
    this.conflictBehavior,
    this.name,
    this.predefinedRolloutPlan,
    this.retryUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictBehavior': ?conflictBehavior,
      'name': ?name,
      'predefinedRolloutPlan': ?predefinedRolloutPlan,
      'retryUuid': ?retryUuid,
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperationRolloutInput.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperationRolloutInput(
      conflictBehavior: (() { final guardedValue = map['conflictBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predefinedRolloutPlan: (() { final guardedValue = map['predefinedRolloutPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryUuid: (() { final guardedValue = map['retryUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
