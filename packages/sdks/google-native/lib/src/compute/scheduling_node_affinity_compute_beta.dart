// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_node_affinity_operator_compute_beta.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.
class SchedulingNodeAffinityComputeBeta {
  /// Corresponds to the label key of Node resource.
  final pulumi.Input<String>? key;
  /// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  final pulumi.Input<SchedulingNodeAffinityOperatorComputeBeta>? operator;
  /// Corresponds to the label values of Node resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [SchedulingNodeAffinityComputeBeta].
  /// [key] Corresponds to the label key of Node resource.
  /// [operator] Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  /// [values] Corresponds to the label values of Node resource.
  const SchedulingNodeAffinityComputeBeta({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<SchedulingNodeAffinityOperatorComputeBeta, String>(operator, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory SchedulingNodeAffinityComputeBeta.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityComputeBeta(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingNodeAffinityOperatorComputeBeta.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

