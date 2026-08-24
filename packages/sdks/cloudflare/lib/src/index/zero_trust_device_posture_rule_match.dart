// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDevicePostureRuleMatch {
  /// Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  final pulumi.Input<String?>? platform;

  /// Creates a new [ZeroTrustDevicePostureRuleMatch].
  /// [platform] Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  const ZeroTrustDevicePostureRuleMatch({
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': ?platform,
    };
  }

  factory ZeroTrustDevicePostureRuleMatch.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDevicePostureRuleMatch(
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
