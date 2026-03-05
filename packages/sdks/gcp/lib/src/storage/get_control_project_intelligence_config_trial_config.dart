// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceConfigTrialConfig {
  /// The time at which the trial expires.
  final pulumi.Input<String> expireTime;

  /// Creates a new [GetControlProjectIntelligenceConfigTrialConfig].
  /// [expireTime] The time at which the trial expires.
  GetControlProjectIntelligenceConfigTrialConfig({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
    };
  }

  factory GetControlProjectIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigTrialConfig(
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
    );
  }
}

