// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan Automation runbook action details.
class RecoveryPlanAutomationRunbookActionDetailsResponse {
  /// The fabric location.
  final pulumi.Input<String> fabricLocation;
  /// Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// Expected value is 'AutomationRunbookActionDetails'.
  final pulumi.Input<String> instanceType;
  /// The runbook ARM Id.
  final pulumi.Input<String>? runbookId;
  /// The runbook timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [RecoveryPlanAutomationRunbookActionDetailsResponse].
  /// [fabricLocation] The fabric location.
  /// [instanceType] Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// [runbookId] The runbook ARM Id.
  /// [timeout] The runbook timeout.
  RecoveryPlanAutomationRunbookActionDetailsResponse({
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

  factory RecoveryPlanAutomationRunbookActionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanAutomationRunbookActionDetailsResponse(
      fabricLocation: (map['fabricLocation'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      runbookId: map['runbookId'] == null ? null : (map['runbookId']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

