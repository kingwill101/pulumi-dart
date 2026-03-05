// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AutomationRolloutMetadata contains Automation-related actions that were performed on a rollout.
class AutomationRolloutMetadataResponse {
  /// The IDs of the AutomationRuns initiated by an advance rollout rule.
  final pulumi.Input<List<String>> advanceAutomationRuns;
  /// The ID of the AutomationRun initiated by a promote release rule.
  final pulumi.Input<String> promoteAutomationRun;
  /// The IDs of the AutomationRuns initiated by a repair rollout rule.
  final pulumi.Input<List<String>> repairAutomationRuns;

  /// Creates a new [AutomationRolloutMetadataResponse].
  /// [advanceAutomationRuns] The IDs of the AutomationRuns initiated by an advance rollout rule.
  /// [promoteAutomationRun] The ID of the AutomationRun initiated by a promote release rule.
  /// [repairAutomationRuns] The IDs of the AutomationRuns initiated by a repair rollout rule.
  AutomationRolloutMetadataResponse({
    required this.advanceAutomationRuns,
    required this.promoteAutomationRun,
    required this.repairAutomationRuns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceAutomationRuns': advanceAutomationRuns,
      'promoteAutomationRun': promoteAutomationRun,
      'repairAutomationRuns': repairAutomationRuns,
    };
  }

  factory AutomationRolloutMetadataResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRolloutMetadataResponse(
      advanceAutomationRuns: pulumi.Input.fromValue((map['advanceAutomationRuns'] as List).cast<String>()),
      promoteAutomationRun: pulumi.Input.fromValue(map['promoteAutomationRun'] as String),
      repairAutomationRuns: pulumi.Input.fromValue((map['repairAutomationRuns'] as List).cast<String>()),
    );
  }
}

