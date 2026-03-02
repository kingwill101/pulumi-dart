// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigEffectiveTaint {
  /// Effect for taint.
  final pulumi.Input<String>? effect;
  /// Key for taint.
  final pulumi.Input<String>? key;
  /// Value for taint.
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterNodeConfigEffectiveTaint].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  ClusterNodeConfigEffectiveTaint({
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

  factory ClusterNodeConfigEffectiveTaint.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigEffectiveTaint(
      effect: map['effect'] == null ? null : (map['effect']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

