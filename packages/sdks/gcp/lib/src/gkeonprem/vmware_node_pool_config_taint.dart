// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareNodePoolConfigTaint {
  /// Available taint effects.
  /// Possible values are: `EFFECT_UNSPECIFIED`, `NO_SCHEDULE`, `PREFER_NO_SCHEDULE`, `NO_EXECUTE`.
  final pulumi.Input<String?>? effect;
  /// Key associated with the effect.
  final pulumi.Input<String> key;
  /// Value associated with the effect.
  final pulumi.Input<String> value;

  /// Creates a new [VMwareNodePoolConfigTaint].
  /// [effect] Available taint effects.
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  const VMwareNodePoolConfigTaint({
    this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': key,
      'value': value,
    };
  }

  factory VMwareNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfigTaint(
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
