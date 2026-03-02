// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeClusterPoolTaint {
  /// The Kubernetes taint effect. The accepted values are `NoSchedule`, `PreferNoSchedule` and `NoExecute`. For the descriptions of these values, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  final pulumi.Input<String> effect;
  /// The Kubernetes taint key.
  final pulumi.Input<String> key;
  /// The Kubernetes taint value.
  final pulumi.Input<String> value;

  /// Creates a new [GetLkeClusterPoolTaint].
  /// [effect] The Kubernetes taint effect. The accepted values are `NoSchedule`, `PreferNoSchedule` and `NoExecute`. For the descriptions of these values, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  /// [key] The Kubernetes taint key.
  /// [value] The Kubernetes taint value.
  GetLkeClusterPoolTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'value': value,
    };
  }

  factory GetLkeClusterPoolTaint.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterPoolTaint(
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

