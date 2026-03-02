// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterNodePoolTaint {
  /// How the node reacts to pods that it won't tolerate. Available effect values are: "NoSchedule", "PreferNoSchedule", "NoExecute".
  final pulumi.Input<String> effect;
  /// An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  final pulumi.Input<String> key;
  /// An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  final pulumi.Input<String> value;

  /// Creates a new [GetKubernetesClusterNodePoolTaint].
  /// [effect] How the node reacts to pods that it won't tolerate. Available effect values are: "NoSchedule", "PreferNoSchedule", "NoExecute".
  /// [key] An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  /// [value] An arbitrary string. The "key" and "value" fields of the "taint" object form a key-value pair.
  GetKubernetesClusterNodePoolTaint({
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

  factory GetKubernetesClusterNodePoolTaint.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNodePoolTaint(
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

