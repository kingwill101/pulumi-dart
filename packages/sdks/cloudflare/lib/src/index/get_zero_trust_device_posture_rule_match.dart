// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDevicePostureRuleMatch {
  /// Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  final pulumi.Input<String> platform;

  /// Creates a new [GetZeroTrustDevicePostureRuleMatch].
  /// [platform] Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  const GetZeroTrustDevicePostureRuleMatch({
    required this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
    };
  }

  factory GetZeroTrustDevicePostureRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRuleMatch(
      platform: pulumi.Input.fromValue(map['platform'] as String),
    );
  }
}
