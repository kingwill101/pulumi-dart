// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigEffectiveTaint {
  /// Effect for taint.
  final pulumi.Input<String?>? effect;
  /// Key for taint.
  final pulumi.Input<String?>? key;
  /// Value for taint.
  final pulumi.Input<String?>? value;

  /// Creates a new [ClusterNodePoolNodeConfigEffectiveTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  const ClusterNodePoolNodeConfigEffectiveTaint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory ClusterNodePoolNodeConfigEffectiveTaint.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigEffectiveTaint(
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
