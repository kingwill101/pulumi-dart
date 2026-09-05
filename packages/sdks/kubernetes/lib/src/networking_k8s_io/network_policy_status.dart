// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';

/// NetworkPolicyStatus describe the current state of the NetworkPolicy.
class NetworkPolicyStatus {
  /// Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  final pulumi.Input<List<Condition>?>? conditions;

  /// Creates a new [NetworkPolicyStatus].
  /// [conditions] Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  const NetworkPolicyStatus({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkPolicyStatus.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
