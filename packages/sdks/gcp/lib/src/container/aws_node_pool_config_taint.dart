// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolConfigTaint {
  /// The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
  final pulumi.Input<String> effect;

  /// Key for the taint.
  final pulumi.Input<String> key;

  /// Value for the taint.
  final pulumi.Input<String> value;

  /// Creates a new [AwsNodePoolConfigTaint].
  /// [effect] The taint effect. Possible values: EFFECT_UNSPECIFIED, NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
  /// [key] Key for the taint.
  /// [value] Value for the taint.
  AwsNodePoolConfigTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory AwsNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
