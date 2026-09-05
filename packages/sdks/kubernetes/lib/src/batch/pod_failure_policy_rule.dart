// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_failure_policy_on_exit_codes_requirement.dart';
import 'pod_failure_policy_on_pod_conditions_pattern.dart';

/// PodFailurePolicyRule describes how a pod failure is handled when the requirements are met. One of onExitCodes and onPodConditions, but not both, can be used in each rule.
class PodFailurePolicyRule {
  /// Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are:
  ///
  /// - FailJob: indicates that the pod's job is marked as Failed and all
  /// running pods are terminated.
  /// - FailIndex: indicates that the pod's index is marked as Failed and will
  /// not be restarted.
  /// - Ignore: indicates that the counter towards the .backoffLimit is not
  /// incremented and a replacement pod is created.
  /// - Count: indicates that the pod is handled in the default way - the
  /// counter towards the .backoffLimit is incremented.
  /// Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.
  final pulumi.Input<String> action;
  /// Represents the requirement on the container exit codes.
  final pulumi.Input<PodFailurePolicyOnExitCodesRequirement?>? onExitCodes;
  /// Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  final pulumi.Input<List<PodFailurePolicyOnPodConditionsPattern>?>? onPodConditions;

  /// Creates a new [PodFailurePolicyRule].
  /// [action] Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are:
  /// [onExitCodes] Represents the requirement on the container exit codes.
  /// [onPodConditions] Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  const PodFailurePolicyRule({
    required this.action,
    this.onExitCodes,
    this.onPodConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'onExitCodes': ?pulumi.Input.mapOptionalInputValue<PodFailurePolicyOnExitCodesRequirement, Map<String, dynamic>>(onExitCodes, (value) => value.toMap()),
      'onPodConditions': ?pulumi.Input.mapOptionalInputValue<List<PodFailurePolicyOnPodConditionsPattern>, List<Map<String, dynamic>>>(onPodConditions, (value) => pulumi.Input.encodeList<PodFailurePolicyOnPodConditionsPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodFailurePolicyRule.fromMap(Map<String, dynamic> map) {
    return PodFailurePolicyRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      onExitCodes: (() { final guardedValue = map['onExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodFailurePolicyOnExitCodesRequirement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPodConditions: (() { final guardedValue = map['onPodConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodFailurePolicyOnPodConditionsPattern>(guardedValue, (value) => PodFailurePolicyOnPodConditionsPattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
