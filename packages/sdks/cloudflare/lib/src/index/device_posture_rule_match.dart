// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevicePostureRuleMatch {
  /// Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  final pulumi.Input<String?>? platform;

  /// Creates a new [DevicePostureRuleMatch].
  /// [platform] Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  const DevicePostureRuleMatch({
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': ?platform,
    };
  }

  factory DevicePostureRuleMatch.fromMap(Map<String, dynamic> map) {
    return DevicePostureRuleMatch(
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
