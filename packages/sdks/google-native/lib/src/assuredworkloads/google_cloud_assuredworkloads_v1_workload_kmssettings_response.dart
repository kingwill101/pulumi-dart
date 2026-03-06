// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings specific to the Key Management Service.
class GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse {
  /// Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.
  final pulumi.Input<String> nextRotationTime;
  /// Input only. Immutable. [next_rotation_time] will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.
  final pulumi.Input<String> rotationPeriod;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse].
  /// [nextRotationTime] Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.
  /// [rotationPeriod] Input only. Immutable. [next_rotation_time] will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.
  const GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRotationTime': nextRotationTime,
      'rotationPeriod': rotationPeriod,
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse(
      nextRotationTime: pulumi.Input.fromValue(map['nextRotationTime'] as String),
      rotationPeriod: pulumi.Input.fromValue(map['rotationPeriod'] as String),
    );
  }
}

