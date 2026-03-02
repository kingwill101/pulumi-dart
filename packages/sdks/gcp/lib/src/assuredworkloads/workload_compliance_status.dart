// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadComplianceStatus {
  /// Number of current orgPolicy violations which are acknowledged.
  final pulumi.Input<List<int>>? acknowledgedViolationCounts;
  /// Number of current orgPolicy violations which are not acknowledged.
  final pulumi.Input<List<int>>? activeViolationCounts;

  /// Creates a new [WorkloadComplianceStatus].
  /// [acknowledgedViolationCounts] Number of current orgPolicy violations which are acknowledged.
  /// [activeViolationCounts] Number of current orgPolicy violations which are not acknowledged.
  WorkloadComplianceStatus({
    this.acknowledgedViolationCounts,
    this.activeViolationCounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgedViolationCounts': ?acknowledgedViolationCounts,
      'activeViolationCounts': ?activeViolationCounts,
    };
  }

  factory WorkloadComplianceStatus.fromMap(Map<String, dynamic> map) {
    return WorkloadComplianceStatus(
      acknowledgedViolationCounts: map['acknowledgedViolationCounts'] == null ? null : ((map['acknowledgedViolationCounts'] as List).cast<int>()).input(),
      activeViolationCounts: map['activeViolationCounts'] == null ? null : ((map['activeViolationCounts'] as List).cast<int>()).input(),
    );
  }
}

