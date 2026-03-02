// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint_effect.dart';

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaint {
  /// Effect for taint.
  final pulumi.Input<NodeTaintEffect>? effect;
  /// Key for taint.
  final pulumi.Input<String>? key;
  /// Value for taint.
  final pulumi.Input<String>? value;

  /// Creates a new [NodeTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
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
      effect: map['effect'] == null ? null : (NodeTaintEffect.fromValue(map['effect'] as String)).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

