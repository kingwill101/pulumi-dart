// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the Compliance Status of this workload
class GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse {
  /// Number of current resource violations which are not acknowledged.
  final pulumi.Input<int> acknowledgedResourceViolationCount;
  /// Number of current orgPolicy violations which are acknowledged.
  final pulumi.Input<int> acknowledgedViolationCount;
  /// Number of current resource violations which are acknowledged.
  final pulumi.Input<int> activeResourceViolationCount;
  /// Number of current orgPolicy violations which are not acknowledged.
  final pulumi.Input<int> activeViolationCount;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse].
  /// [acknowledgedResourceViolationCount] Number of current resource violations which are not acknowledged.
  /// [acknowledgedViolationCount] Number of current orgPolicy violations which are acknowledged.
  /// [activeResourceViolationCount] Number of current resource violations which are acknowledged.
  /// [activeViolationCount] Number of current orgPolicy violations which are not acknowledged.
  const GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse({
    required this.acknowledgedResourceViolationCount,
    required this.acknowledgedViolationCount,
    required this.activeResourceViolationCount,
    required this.activeViolationCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgedResourceViolationCount': acknowledgedResourceViolationCount,
      'acknowledgedViolationCount': acknowledgedViolationCount,
      'activeResourceViolationCount': activeResourceViolationCount,
      'activeViolationCount': activeViolationCount,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse(
      acknowledgedResourceViolationCount: pulumi.Input.fromValue(map['acknowledgedResourceViolationCount'] as int),
      acknowledgedViolationCount: pulumi.Input.fromValue(map['acknowledgedViolationCount'] as int),
      activeResourceViolationCount: pulumi.Input.fromValue(map['activeResourceViolationCount'] as int),
      activeViolationCount: pulumi.Input.fromValue(map['activeViolationCount'] as int),
    );
  }
}

