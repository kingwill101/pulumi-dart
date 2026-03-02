// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity_operator_container_v1beta1.dart';

/// Specifies the NodeAffinity key, values, and affinity operator according to [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).
class NodeAffinityContainerV1beta1 {
  /// Key for NodeAffinity.
  final pulumi.Input<String>? key;
  /// Operator for NodeAffinity.
  final pulumi.Input<NodeAffinityOperatorContainerV1beta1>? operator;
  /// Values for NodeAffinity.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [NodeAffinityContainerV1beta1].
  /// [key] Key for NodeAffinity.
  /// [operator] Operator for NodeAffinity.
  /// [values] Values for NodeAffinity.
  NodeAffinityContainerV1beta1({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<NodeAffinityOperatorContainerV1beta1, String>(operator, (value) => value.value),
      'values': ?values,
    };
  }

  factory NodeAffinityContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeAffinityContainerV1beta1(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      operator: map['operator'] == null ? null : (NodeAffinityOperatorContainerV1beta1.fromValue(map['operator'] as String)).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

