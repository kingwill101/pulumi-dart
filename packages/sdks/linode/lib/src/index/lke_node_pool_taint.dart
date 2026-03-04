// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LkeNodePoolTaint {
  /// The Kubernetes taint effect. Accepted values are `NoSchedule`, `PreferNoSchedule`, and `NoExecute`. For the descriptions of these values, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  final pulumi.Input<String> effect;

  /// The Kubernetes taint key.
  final pulumi.Input<String> key;

  /// The Kubernetes taint value.
  final pulumi.Input<String> value;

  /// Creates a new [LkeNodePoolTaint].
  /// [effect] The Kubernetes taint effect. Accepted values are `NoSchedule`, `PreferNoSchedule`, and `NoExecute`. For the descriptions of these values, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  /// [key] The Kubernetes taint key.
  /// [value] The Kubernetes taint value.
  LkeNodePoolTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory LkeNodePoolTaint.fromMap(Map<String, dynamic> map) {
    return LkeNodePoolTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
