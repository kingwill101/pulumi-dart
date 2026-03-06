// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_node_affinity_operator_vmmigration_v1alpha1.dart';

/// Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling
class SchedulingNodeAffinityVmmigrationV1alpha1 {
  /// The label key of Node resource to reference.
  final pulumi.Input<String>? key;
  /// The operator to use for the node resources specified in the `values` parameter.
  final pulumi.Input<SchedulingNodeAffinityOperatorVmmigrationV1alpha1>? operator;
  /// Corresponds to the label values of Node resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [SchedulingNodeAffinityVmmigrationV1alpha1].
  /// [key] The label key of Node resource to reference.
  /// [operator] The operator to use for the node resources specified in the `values` parameter.
  /// [values] Corresponds to the label values of Node resource.
  const SchedulingNodeAffinityVmmigrationV1alpha1({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<SchedulingNodeAffinityOperatorVmmigrationV1alpha1, String>(operator, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory SchedulingNodeAffinityVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityVmmigrationV1alpha1(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingNodeAffinityOperatorVmmigrationV1alpha1.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

