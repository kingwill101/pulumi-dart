// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigTaint {
  /// Effect for taint.
  final pulumi.Input<String> effect;
  /// Key for taint.
  final pulumi.Input<String> key;
  /// Value for taint.
  final pulumi.Input<String> value;

  /// Creates a new [GetClusterNodeConfigTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  const GetClusterNodeConfigTaint({
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

  factory GetClusterNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
