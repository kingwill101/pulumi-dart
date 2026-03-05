// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Kubernetes `taint` to apply to all Nodes in a NodeGroup. See https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/.
class Taint {
  /// The effect of the taint.
  final pulumi.Input<String> effect;
  /// The value of the taint.
  final pulumi.Input<String> value;

  /// Creates a new [Taint].
  /// [effect] The effect of the taint.
  /// [value] The value of the taint.
  Taint({
    required this.effect,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'value': value,
    };
  }

  factory Taint.fromMap(Map<String, dynamic> map) {
    return Taint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

