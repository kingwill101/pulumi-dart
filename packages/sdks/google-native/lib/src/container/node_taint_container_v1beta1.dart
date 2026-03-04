// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint_effect_container_v1beta1.dart';

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaintContainerV1beta1 {
  /// Effect for taint.
  final pulumi.Input<NodeTaintEffectContainerV1beta1>? effect;

  /// Key for taint.
  final pulumi.Input<String>? key;

  /// Value for taint.
  final pulumi.Input<String>? value;

  /// Creates a new [NodeTaintContainerV1beta1].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  NodeTaintContainerV1beta1({this.effect, this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect':
          ?pulumi.Input.mapOptionalInputValue<
            NodeTaintEffectContainerV1beta1,
            String
          >(effect, (value) => value.wireValue),
      'key': ?key,
      'value': ?value,
    };
  }

  factory NodeTaintContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeTaintContainerV1beta1(
      effect: (() {
        final guardedValue = map['effect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeTaintEffectContainerV1beta1.fromValue(guardedValue as String),
        );
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
