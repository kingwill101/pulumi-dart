// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDevicePostureRulesResultMatch {
  /// Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  final pulumi.Input<String> platform;

  /// Creates a new [GetZeroTrustDevicePostureRulesResultMatch].
  /// [platform] Available values: "windows", "mac", "linux", "android", "ios", "chromeos".
  const GetZeroTrustDevicePostureRulesResultMatch({
    required this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
    };
  }

  factory GetZeroTrustDevicePostureRulesResultMatch.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRulesResultMatch(
      platform: pulumi.Input.fromValue(map['platform'] as String),
    );
  }
}
