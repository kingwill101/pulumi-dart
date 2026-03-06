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
  const NodeAffinity({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?pulumi.Input.mapOptionalInputValue<NodeAffinityOperator, String>(operator, (value) => value.wireValue),
      'values': ?values,
    };
  }

  factory NodeAffinity.fromMap(Map<String, dynamic> map) {
    return NodeAffinity(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAffinityOperator.fromValue(guardedValue as String)); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

