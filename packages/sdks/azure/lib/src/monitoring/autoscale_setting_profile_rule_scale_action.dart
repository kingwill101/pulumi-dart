// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingProfileRuleScaleAction {
  /// The amount of time to wait since the last scaling action before this action occurs. Must be between 1 minute and 1 week and formatted as a ISO 8601 string.
  final pulumi.Input<String> cooldown;

  /// The scale direction. Possible values are `Increase` and `Decrease`.
  final pulumi.Input<String> direction;

  /// The type of action that should occur. Possible values are `ChangeCount`, `ExactCount`, `PercentChangeCount` and `ServiceAllowedNextValue`.
  final pulumi.Input<String> type;

  /// The number of instances involved in the scaling action.
  final pulumi.Input<int> value;

  /// Creates a new [AutoscaleSettingProfileRuleScaleAction].
  /// [cooldown] The amount of time to wait since the last scaling action before this action occurs. Must be between 1 minute and 1 week and formatted as a ISO 8601 string.
  /// [direction] The scale direction. Possible values are `Increase` and `Decrease`.
  /// [type] The type of action that should occur. Possible values are `ChangeCount`, `ExactCount`, `PercentChangeCount` and `ServiceAllowedNextValue`.
  /// [value] The number of instances involved in the scaling action.
  AutoscaleSettingProfileRuleScaleAction({
    required this.cooldown,
    required this.direction,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldown': cooldown,
      'direction': direction,
      'type': type,
      'value': value,
    };
  }

  factory AutoscaleSettingProfileRuleScaleAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscaleSettingProfileRuleScaleAction(
      cooldown: pulumi.Input.fromValue(map['cooldown'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
