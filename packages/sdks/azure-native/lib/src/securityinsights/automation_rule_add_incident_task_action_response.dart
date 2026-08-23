// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_incident_task_action_properties_response.dart';

/// Describes an automation rule action to add a task to an incident
class AutomationRuleAddIncidentTaskActionResponse {
  /// Describes an automation rule action to add a task to an incident.
  final pulumi.Input<AddIncidentTaskActionPropertiesResponse>? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'AddIncidentTask'.
  final pulumi.Input<String> actionType;
  final pulumi.Input<int> order;

  /// Creates a new [AutomationRuleAddIncidentTaskActionResponse].
  /// [actionConfiguration] Describes an automation rule action to add a task to an incident.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  const AutomationRuleAddIncidentTaskActionResponse({
    this.actionConfiguration,
    required this.actionType,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<AddIncidentTaskActionPropertiesResponse, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleAddIncidentTaskActionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAddIncidentTaskActionResponse(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddIncidentTaskActionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
    );
  }
}
