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
  SchedulingNodeAffinityVmmigrationV1alpha1({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<SchedulingNodeAffinityOperatorVmmigrationV1alpha1, String>(operator, (value) => value.value),
      'values': ?values,
    };
  }

  factory SchedulingNodeAffinityVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeAffinityVmmigrationV1alpha1(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      operator: map['operator'] == null ? null : (SchedulingNodeAffinityOperatorVmmigrationV1alpha1.fromValue(map['operator']! as String)).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

