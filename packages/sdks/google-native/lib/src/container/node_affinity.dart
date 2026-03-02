// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity_operator.dart';

/// Specifies the NodeAffinity key, values, and affinity operator according to [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).
class NodeAffinity {
  /// Key for NodeAffinity.
  final pulumi.Input<String>? key;
  /// Operator for NodeAffinity.
  final pulumi.Input<NodeAffinityOperator>? operator;
  /// Values for NodeAffinity.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [NodeAffinity].
  /// [key] Key for NodeAffinity.
  /// [operator] Operator for NodeAffinity.
  /// [values] Values for NodeAffinity.
  NodeAffinity({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<NodeAffinityOperator, String>(operator, (value) => value.value),
      'values': ?values,
    };
  }

  factory NodeAffinity.fromMap(Map<String, dynamic> map) {
    return NodeAffinity(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      operator: map['operator'] == null ? null : (NodeAffinityOperator.fromValue(map['operator'] as String)).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

