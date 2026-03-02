// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint_effect.dart';

/// NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaint {
  /// The taint effect.
  final pulumi.Input<NodeTaintEffect>? effect;
  /// Key associated with the effect.
  final pulumi.Input<String>? key;
  /// Value associated with the effect.
  final pulumi.Input<String>? value;

  /// Creates a new [NodeTaint].
  /// [effect] The taint effect.
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  NodeTaint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?pulumi.Input.mapOptionalInputValue<NodeTaintEffect, String>(effect, (value) => value.value),
      'key': ?key,
      'value': ?value,
    };
  }

  factory NodeTaint.fromMap(Map<String, dynamic> map) {
    return NodeTaint(
      effect: map['effect'] == null ? null : (NodeTaintEffect.fromValue(map['effect']! as String)).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

