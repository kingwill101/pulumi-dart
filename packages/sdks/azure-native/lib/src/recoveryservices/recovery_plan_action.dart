// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_automation_runbook_action_details.dart';

/// Recovery plan action details.
class RecoveryPlanAction {
  /// The action name.
  final pulumi.Input<String> actionName;
  /// The custom details.
  final pulumi.Input<RecoveryPlanAutomationRunbookActionDetails> customDetails;
  /// The list of failover directions.
  final pulumi.Input<List<String>> failoverDirections;
  /// The list of failover types.
  final pulumi.Input<List<String>> failoverTypes;

  /// Creates a new [RecoveryPlanAction].
  /// [actionName] The action name.
  /// [customDetails] The custom details.
  /// [failoverDirections] The list of failover directions.
  /// [failoverTypes] The list of failover types.
  RecoveryPlanAction({
    required this.actionName,
    required this.customDetails,
    required this.failoverDirections,
    required this.failoverTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'customDetails': pulumi.Input.mapInputValue<RecoveryPlanAutomationRunbookActionDetails, Map<String, dynamic>>(customDetails, (value) => value.toMap()),
      'failoverDirections': failoverDirections,
      'failoverTypes': failoverTypes,
    };
  }

  factory RecoveryPlanAction.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanAction(
      actionName: (map['actionName'] as String).input(),
      customDetails: (RecoveryPlanAutomationRunbookActionDetails.fromMap((map['customDetails'] as Map).cast<String, dynamic>())).input(),
      failoverDirections: ((map['failoverDirections'] as List).cast<String>()).input(),
      failoverTypes: ((map['failoverTypes'] as List).cast<String>()).input(),
    );
  }
}

