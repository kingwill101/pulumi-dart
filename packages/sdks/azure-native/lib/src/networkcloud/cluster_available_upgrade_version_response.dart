// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAvailableUpgradeVersionResponse {
  /// The indicator of whether the control plane will be impacted during the upgrade.
  final pulumi.Input<String> controlImpact;
  /// The expected duration needed for this upgrade.
  final pulumi.Input<String> expectedDuration;
  /// The impact description including the specific details and release notes.
  final pulumi.Input<String> impactDescription;
  /// The last date the version of the platform is supported.
  final pulumi.Input<String> supportExpiryDate;
  /// The target version this cluster will be upgraded to.
  final pulumi.Input<String> targetClusterVersion;
  /// The indicator of whether the workload will be impacted during the upgrade.
  final pulumi.Input<String> workloadImpact;

  /// Creates a new [ClusterAvailableUpgradeVersionResponse].
  /// [controlImpact] The indicator of whether the control plane will be impacted during the upgrade.
  /// [expectedDuration] The expected duration needed for this upgrade.
  /// [impactDescription] The impact description including the specific details and release notes.
  /// [supportExpiryDate] The last date the version of the platform is supported.
  /// [targetClusterVersion] The target version this cluster will be upgraded to.
  /// [workloadImpact] The indicator of whether the workload will be impacted during the upgrade.
  ClusterAvailableUpgradeVersionResponse({
    required this.controlImpact,
    required this.expectedDuration,
    required this.impactDescription,
    required this.supportExpiryDate,
    required this.targetClusterVersion,
    required this.workloadImpact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlImpact': controlImpact,
      'expectedDuration': expectedDuration,
      'impactDescription': impactDescription,
      'supportExpiryDate': supportExpiryDate,
      'targetClusterVersion': targetClusterVersion,
      'workloadImpact': workloadImpact,
    };
  }

  factory ClusterAvailableUpgradeVersionResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAvailableUpgradeVersionResponse(
      controlImpact: (map['controlImpact'] as String).input(),
      expectedDuration: (map['expectedDuration'] as String).input(),
      impactDescription: (map['impactDescription'] as String).input(),
      supportExpiryDate: (map['supportExpiryDate'] as String).input(),
      targetClusterVersion: (map['targetClusterVersion'] as String).input(),
      workloadImpact: (map['workloadImpact'] as String).input(),
    );
  }
}

