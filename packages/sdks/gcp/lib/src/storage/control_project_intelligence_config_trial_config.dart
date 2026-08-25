// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlProjectIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final pulumi.Input<String?>? expireTime;

  /// Creates a new [ControlProjectIntelligenceConfigTrialConfig].
  /// [expireTime] (Output)
  const ControlProjectIntelligenceConfigTrialConfig({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
    };
  }

  factory ControlProjectIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigTrialConfig(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
