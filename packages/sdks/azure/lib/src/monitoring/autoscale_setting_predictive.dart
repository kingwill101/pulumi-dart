// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingPredictive {
  /// Specifies the amount of time by which instances are launched in advance. It must be between `PT1M` and `PT1H` in ISO 8601 format.
  final pulumi.Input<String?>? lookAheadTime;
  /// Specifies the predictive scale mode. Possible values are `Enabled` or `ForecastOnly`.
  final pulumi.Input<String> scaleMode;

  /// Creates a new [AutoscaleSettingPredictive].
  /// [lookAheadTime] Specifies the amount of time by which instances are launched in advance. It must be between `PT1M` and `PT1H` in ISO 8601 format.
  /// [scaleMode] Specifies the predictive scale mode. Possible values are `Enabled` or `ForecastOnly`.
  const AutoscaleSettingPredictive({
    this.lookAheadTime,
    required this.scaleMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookAheadTime': ?lookAheadTime,
      'scaleMode': scaleMode,
    };
  }

  factory AutoscaleSettingPredictive.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingPredictive(
      lookAheadTime: (() { final guardedValue = map['lookAheadTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleMode: pulumi.Input.fromValue(map['scaleMode'] as String),
    );
  }
}
