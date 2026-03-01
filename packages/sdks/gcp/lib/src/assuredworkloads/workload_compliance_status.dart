// ignore_for_file: unused_element, unnecessary_cast


class WorkloadComplianceStatus {
  /// Number of current orgPolicy violations which are acknowledged.
  final List<int>? acknowledgedViolationCounts;
  /// Number of current orgPolicy violations which are not acknowledged.
  final List<int>? activeViolationCounts;

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
      acknowledgedViolationCounts: map['acknowledgedViolationCounts'] == null ? null : (map['acknowledgedViolationCounts'] as List).cast<int>(),
      activeViolationCounts: map['activeViolationCounts'] == null ? null : (map['activeViolationCounts'] as List).cast<int>(),
    );
  }
}

