// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlFolderIntelligenceConfigTrialConfig {
  /// The time at which the trial expires.
  final pulumi.Input<String> expireTime;

  /// Creates a new [GetControlFolderIntelligenceConfigTrialConfig].
  /// [expireTime] The time at which the trial expires.
  const GetControlFolderIntelligenceConfigTrialConfig({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
    };
  }

  factory GetControlFolderIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigTrialConfig(
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
    );
  }
}
