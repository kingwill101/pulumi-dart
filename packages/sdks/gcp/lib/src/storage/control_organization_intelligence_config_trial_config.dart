// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlOrganizationIntelligenceConfigTrialConfig {
  /// (Output)
  /// The time at which the trial expires.
  final pulumi.Input<String>? expireTime;

  /// Creates a new [ControlOrganizationIntelligenceConfigTrialConfig].
  /// [expireTime] (Output)
  ControlOrganizationIntelligenceConfigTrialConfig({this.expireTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expireTime': ?expireTime};
  }

  factory ControlOrganizationIntelligenceConfigTrialConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlOrganizationIntelligenceConfigTrialConfig(
      expireTime: (() {
        final guardedValue = map['expireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
