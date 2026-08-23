// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_condition.dart';
import 'lifecycle_policy_action.dart';

/// LifecyclePolicy describes how to deal with task failures based on different conditions.
class LifecyclePolicy {
  /// Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
  final pulumi.Input<LifecyclePolicyAction>? action;
  /// Conditions that decide why a task failure is dealt with a specific action.
  final pulumi.Input<ActionCondition>? actionCondition;

  /// Creates a new [LifecyclePolicy].
  /// [action] Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
  /// [actionCondition] Conditions that decide why a task failure is dealt with a specific action.
  const LifecyclePolicy({
    this.action,
    this.actionCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyAction, String>(action, (value) => value.wireValue),
      'actionCondition': ?pulumi.Input.mapOptionalInputValue<ActionCondition, Map<String, dynamic>>(actionCondition, (value) => value.toMap()),
    };
  }

  factory LifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicy(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyAction.fromValue(guardedValue as String)); })(),
      actionCondition: (() { final guardedValue = map['actionCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
