// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaintResponse {
  /// The taint effect.
  final pulumi.Input<String> effect;

  /// Key associated with the effect.
  final pulumi.Input<String> key;

  /// Value associated with the effect.
  final pulumi.Input<String> value;

  /// Creates a new [NodeTaintResponse].
  /// [effect] The taint effect.
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  NodeTaintResponse({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory NodeTaintResponse.fromMap(Map<String, dynamic> map) {
    return NodeTaintResponse(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
