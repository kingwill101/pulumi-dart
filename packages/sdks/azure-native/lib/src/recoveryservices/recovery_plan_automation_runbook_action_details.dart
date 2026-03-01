// ignore_for_file: unused_element, unnecessary_cast


/// Recovery plan Automation runbook action details.
class RecoveryPlanAutomationRunbookActionDetails {
  /// The fabric location.
  final String fabricLocation;
  /// Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// Expected value is 'AutomationRunbookActionDetails'.
  final String instanceType;
  /// The runbook ARM Id.
  final String? runbookId;
  /// The runbook timeout.
  final String? timeout;

  /// Creates a new [RecoveryPlanAutomationRunbookActionDetails].
  /// [fabricLocation] The fabric location.
  /// [instanceType] Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// [runbookId] The runbook ARM Id.
  /// [timeout] The runbook timeout.
  RecoveryPlanAutomationRunbookActionDetails({
    required this.fabricLocation,
    required this.instanceType,
    this.runbookId,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricLocation': fabricLocation,
      'instanceType': instanceType,
      'runbookId': ?runbookId,
      'timeout': ?timeout,
    };
  }

  factory RecoveryPlanAutomationRunbookActionDetails.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanAutomationRunbookActionDetails(
      fabricLocation: map['fabricLocation'] as String,
      instanceType: map['instanceType'] as String,
      runbookId: map['runbookId'] == null ? null : map['runbookId'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

