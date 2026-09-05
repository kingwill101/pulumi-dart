// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// NetworkPolicyStatus describe the current state of the NetworkPolicy.
class NetworkPolicyStatusPatch {
  /// Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  final pulumi.Input<List<ConditionPatch>?>? conditions;

  /// Creates a new [NetworkPolicyStatusPatch].
  /// [conditions] Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  const NetworkPolicyStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkPolicyStatusPatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
