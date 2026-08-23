// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigEffectiveTaint {
  /// Effect for taint.
  final pulumi.Input<String> effect;
  /// Key for taint.
  final pulumi.Input<String> key;
  /// Value for taint.
  final pulumi.Input<String> value;

  /// Creates a new [GetClusterNodeConfigEffectiveTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  const GetClusterNodeConfigEffectiveTaint({
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

  factory GetClusterNodeConfigEffectiveTaint.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigEffectiveTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
