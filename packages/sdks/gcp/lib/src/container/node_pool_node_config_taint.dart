// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigTaint {
  /// Effect for taint.
  final pulumi.Input<String> effect;
  /// Key for taint.
  final pulumi.Input<String> key;
  /// Value for taint.
  final pulumi.Input<String> value;

  /// Creates a new [NodePoolNodeConfigTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  NodePoolNodeConfigTaint({
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

  factory NodePoolNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigTaint(
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

