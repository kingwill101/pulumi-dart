// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalNodePoolNodePoolConfigTaint {
  /// Specifies the nodes operating system (default: LINUX).
  /// Possible values are: `EFFECT_UNSPECIFIED`, `PREFER_NO_SCHEDULE`, `NO_EXECUTE`.
  final pulumi.Input<String>? effect;
  /// Key associated with the effect.
  final pulumi.Input<String>? key;
  /// Value associated with the effect.
  final pulumi.Input<String>? value;

  /// Creates a new [BareMetalNodePoolNodePoolConfigTaint].
  /// [effect] Specifies the nodes operating system (default: LINUX).
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  BareMetalNodePoolNodePoolConfigTaint({
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

  factory BareMetalNodePoolNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolNodePoolConfigTaint(
      effect: map['effect'] == null ? null : (map['effect'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

