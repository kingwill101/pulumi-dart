// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigTaint {
  /// Effect for taint. Accepted values are `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, and `NO_EXECUTE`.
  final pulumi.Input<String> effect;

  /// Key for taint.
  final pulumi.Input<String> key;

  /// Value for taint.
  final pulumi.Input<String> value;

  /// Creates a new [ClusterNodeConfigTaint].
  /// [effect] Effect for taint. Accepted values are `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, and `NO_EXECUTE`.
  /// [key] Key for taint.
  /// [value] Value for taint.
  ClusterNodeConfigTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory ClusterNodeConfigTaint.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
