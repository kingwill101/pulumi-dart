// ignore_for_file: unused_element, unnecessary_cast


class AutoscaleSettingProfileRuleScaleAction {
  /// The amount of time to wait since the last scaling action before this action occurs. Must be between 1 minute and 1 week and formatted as a ISO 8601 string.
  final String cooldown;
  /// The scale direction. Possible values are `Increase` and `Decrease`.
  final String direction;
  /// The type of action that should occur. Possible values are `ChangeCount`, `ExactCount`, `PercentChangeCount` and `ServiceAllowedNextValue`.
  final String type;
  /// The number of instances involved in the scaling action.
  final int value;

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

  factory AutoscaleSettingProfileRuleScaleAction.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileRuleScaleAction(
      cooldown: map['cooldown'] as String,
      direction: map['direction'] as String,
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}

