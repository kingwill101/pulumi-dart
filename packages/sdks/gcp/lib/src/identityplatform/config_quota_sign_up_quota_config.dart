// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigQuotaSignUpQuotaConfig {
  /// A sign up APIs quota that customers can override temporarily. Value can be in between 1 and 1000.
  final pulumi.Input<int>? quota;

  /// How long this quota will be active for. It is measurred in seconds, e.g., Example: "9.615s".
  final pulumi.Input<String>? quotaDuration;

  /// When this quota will take affect.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ConfigQuotaSignUpQuotaConfig].
  /// [quota] A sign up APIs quota that customers can override temporarily. Value can be in between 1 and 1000.
  /// [quotaDuration] How long this quota will be active for. It is measurred in seconds, e.g., Example: "9.615s".
  /// [startTime] When this quota will take affect.
  ConfigQuotaSignUpQuotaConfig({
    this.quota,
    this.quotaDuration,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quota': ?quota,
      'quotaDuration': ?quotaDuration,
      'startTime': ?startTime,
    };
  }

  factory ConfigQuotaSignUpQuotaConfig.fromMap(Map<String, dynamic> map) {
    return ConfigQuotaSignUpQuotaConfig(
      quota: (() {
        final guardedValue = map['quota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      quotaDuration: (() {
        final guardedValue = map['quotaDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
