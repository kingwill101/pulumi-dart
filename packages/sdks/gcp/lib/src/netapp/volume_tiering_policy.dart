// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTieringPolicy {
  /// Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// Default is 31.
  final pulumi.Input<int?>? coolingThresholdDays;
  /// Optional. Flag indicating that the hot tier bypass mode is enabled. Default is false.
  /// Only applicable to Flex service level.
  final pulumi.Input<bool?>? hotTierBypassModeEnabled;
  /// Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  /// Default value is `PAUSED`.
  /// Possible values are: `ENABLED`, `PAUSED`.
  final pulumi.Input<String?>? tierAction;

  /// Creates a new [VolumeTieringPolicy].
  /// [coolingThresholdDays] Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// [hotTierBypassModeEnabled] Optional. Flag indicating that the hot tier bypass mode is enabled. Default is false.
  /// [tierAction] Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  const VolumeTieringPolicy({
    this.coolingThresholdDays,
    this.hotTierBypassModeEnabled,
    this.tierAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolingThresholdDays': ?coolingThresholdDays,
      'hotTierBypassModeEnabled': ?hotTierBypassModeEnabled,
      'tierAction': ?tierAction,
    };
  }

  factory VolumeTieringPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeTieringPolicy(
      coolingThresholdDays: (() { final guardedValue = map['coolingThresholdDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      hotTierBypassModeEnabled: (() { final guardedValue = map['hotTierBypassModeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tierAction: (() { final guardedValue = map['tierAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
