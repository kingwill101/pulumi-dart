// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan Automation runbook action details.
class RecoveryPlanAutomationRunbookActionDetails {
  /// The fabric location.
  final pulumi.Input<dynamic> fabricLocation;
  /// Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// Expected value is 'AutomationRunbookActionDetails'.
  final pulumi.Input<String> instanceType;
  /// The runbook ARM Id.
  final pulumi.Input<String?>? runbookId;
  /// The runbook timeout.
  final pulumi.Input<String?>? timeout;

  /// Creates a new [RecoveryPlanAutomationRunbookActionDetails].
  /// [fabricLocation] The fabric location.
  /// [instanceType] Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// [runbookId] The runbook ARM Id.
  /// [timeout] The runbook timeout.
  const RecoveryPlanAutomationRunbookActionDetails({
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
      fabricLocation: pulumi.Input.fromValue(map['fabricLocation']),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      runbookId: (() { final guardedValue = map['runbookId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
