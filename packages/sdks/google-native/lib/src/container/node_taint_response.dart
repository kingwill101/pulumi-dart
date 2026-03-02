// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaintResponse {
  /// Effect for taint.
  final pulumi.Input<String> effect;
  /// Key for taint.
  final pulumi.Input<String> key;
  /// Value for taint.
  final pulumi.Input<String> value;

  /// Creates a new [NodeTaintResponse].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  NodeTaintResponse({
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

  factory NodeTaintResponse.fromMap(Map<String, dynamic> map) {
    return NodeTaintResponse(
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

