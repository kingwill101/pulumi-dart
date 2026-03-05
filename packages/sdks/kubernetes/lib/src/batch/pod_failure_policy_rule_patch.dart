// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_failure_policy_on_exit_codes_requirement_patch.dart';
import 'pod_failure_policy_on_pod_conditions_pattern_patch.dart';

/// PodFailurePolicyRule describes how a pod failure is handled when the requirements are met. One of onExitCodes and onPodConditions, but not both, can be used in each rule.
class PodFailurePolicyRulePatch {
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
  final pulumi.Input<String>? action;
  /// Represents the requirement on the container exit codes.
  final pulumi.Input<PodFailurePolicyOnExitCodesRequirementPatch>? onExitCodes;
  /// Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  final pulumi.Input<List<PodFailurePolicyOnPodConditionsPatternPatch>>? onPodConditions;

  /// Creates a new [PodFailurePolicyRulePatch].
  /// [action] Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are:
  /// [onExitCodes] Represents the requirement on the container exit codes.
  /// [onPodConditions] Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  PodFailurePolicyRulePatch({
    this.action,
    this.onExitCodes,
    this.onPodConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'onExitCodes': ?pulumi.Input.mapOptionalInputValue<PodFailurePolicyOnExitCodesRequirementPatch, Map<String, dynamic>>(onExitCodes, (value) => value.toMap()),
      'onPodConditions': ?pulumi.Input.mapOptionalInputValue<List<PodFailurePolicyOnPodConditionsPatternPatch>, List<Map<String, dynamic>>>(onPodConditions, (value) => pulumi.Input.encodeList<PodFailurePolicyOnPodConditionsPatternPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodFailurePolicyRulePatch.fromMap(Map<String, dynamic> map) {
    return PodFailurePolicyRulePatch(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onExitCodes: (() { final guardedValue = map['onExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodFailurePolicyOnExitCodesRequirementPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPodConditions: (() { final guardedValue = map['onPodConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodFailurePolicyOnPodConditionsPatternPatch>(guardedValue, (value) => PodFailurePolicyOnPodConditionsPatternPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

