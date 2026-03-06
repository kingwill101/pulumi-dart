// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlOrganizationIntelligenceConfigTrialConfig {
  /// The time at which the trial expires.
  final pulumi.Input<String> expireTime;

  /// Creates a new [GetControlOrganizationIntelligenceConfigTrialConfig].
  /// [expireTime] The time at which the trial expires.
  const GetControlOrganizationIntelligenceConfigTrialConfig({
    required this.expireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
    };
  }

  factory GetControlOrganizationIntelligenceConfigTrialConfig.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigTrialConfig(
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
    );
  }
}

