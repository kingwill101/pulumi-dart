// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_node_affinity_operator_compute_v1.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinityComputeV1 {
  /// Corresponds to the label key of Node resource.
  final pulumi.Input<String>? key;
  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final pulumi.Input<SchedulingNodeAffinityOperatorComputeV1>? operator;
  /// Corresponds to the label values of Node resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [SchedulingNodeAffinityComputeV1].
  /// [key] Corresponds to the label key of Node resource.
  /// [operator] Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  /// [values] Corresponds to the label values of Node resource.
  const SchedulingNodeAffinityComputeV1({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<SchedulingNodeAffinityOperatorComputeV1, String>(operator, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory SchedulingNodeAffinityComputeV1.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityComputeV1(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingNodeAffinityOperatorComputeV1.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
