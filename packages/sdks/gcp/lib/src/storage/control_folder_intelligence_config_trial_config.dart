// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlFolderIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final pulumi.Input<String?>? expireTime;

  /// Creates a new [ControlFolderIntelligenceConfigTrialConfig].
  /// [expireTime] (Output)
  const ControlFolderIntelligenceConfigTrialConfig({
    this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
    };
  }

  factory ControlFolderIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigTrialConfig(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
