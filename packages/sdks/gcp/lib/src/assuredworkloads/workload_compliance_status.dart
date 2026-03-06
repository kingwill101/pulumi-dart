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
  const WorkloadComplianceStatus({
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
      acknowledgedViolationCounts: (() { final guardedValue = map['acknowledgedViolationCounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      activeViolationCounts: (() { final guardedValue = map['activeViolationCounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}

