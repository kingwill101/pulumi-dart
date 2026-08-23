// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_node_affinity_operator.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling
class SchedulingNodeAffinity {
  /// The label key of Node resource to reference.
  final pulumi.Input<String>? key;
  /// The operator to use for the node resources specified in the `values` parameter.
  final pulumi.Input<SchedulingNodeAffinityOperator>? operator;
  /// Corresponds to the label values of Node resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [SchedulingNodeAffinity].
  /// [key] The label key of Node resource to reference.
  /// [operator] The operator to use for the node resources specified in the `values` parameter.
  /// [values] Corresponds to the label values of Node resource.
  const SchedulingNodeAffinity({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<SchedulingNodeAffinityOperator, String>(operator, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory SchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinity(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingNodeAffinityOperator.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
