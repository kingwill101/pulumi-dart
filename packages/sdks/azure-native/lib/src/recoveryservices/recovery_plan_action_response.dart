// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_automation_runbook_action_details_response.dart';

/// Recovery plan action details.
class RecoveryPlanActionResponse {
  /// The action name.
  final pulumi.Input<String> actionName;

  /// The custom details.
  final pulumi.Input<RecoveryPlanAutomationRunbookActionDetailsResponse>
  customDetails;

  /// The list of failover directions.
  final pulumi.Input<List<String>> failoverDirections;

  /// The list of failover types.
  final pulumi.Input<List<String>> failoverTypes;

  /// Creates a new [RecoveryPlanActionResponse].
  /// [actionName] The action name.
  /// [customDetails] The custom details.
  /// [failoverDirections] The list of failover directions.
  /// [failoverTypes] The list of failover types.
  RecoveryPlanActionResponse({
    required this.actionName,
    required this.customDetails,
    required this.failoverDirections,
    required this.failoverTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'customDetails':
          pulumi.Input.mapInputValue<
            RecoveryPlanAutomationRunbookActionDetailsResponse,
            Map<String, dynamic>
          >(customDetails, (value) => value.toMap()),
      'failoverDirections': failoverDirections,
      'failoverTypes': failoverTypes,
    };
  }

  factory RecoveryPlanActionResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanActionResponse(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      customDetails: pulumi.Input.fromValue(
        RecoveryPlanAutomationRunbookActionDetailsResponse.fromMap(
          (map['customDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
      failoverDirections: pulumi.Input.fromValue(
        (map['failoverDirections'] as List).cast<String>(),
      ),
      failoverTypes: pulumi.Input.fromValue(
        (map['failoverTypes'] as List).cast<String>(),
      ),
    );
  }
}
