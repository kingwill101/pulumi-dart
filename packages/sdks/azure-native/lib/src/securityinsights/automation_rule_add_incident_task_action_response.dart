// ignore_for_file: unused_element, unnecessary_cast

import 'add_incident_task_action_properties_response.dart';

/// Describes an automation rule action to add a task to an incident
class AutomationRuleAddIncidentTaskActionResponse {
  /// Describes an automation rule action to add a task to an incident.
  final AddIncidentTaskActionPropertiesResponse? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'AddIncidentTask'.
  final String actionType;
  final int order;

  /// Creates a new [AutomationRuleAddIncidentTaskActionResponse].
  /// [actionConfiguration] Describes an automation rule action to add a task to an incident.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleAddIncidentTaskActionResponse({
    this.actionConfiguration,
    required this.actionType,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?actionConfiguration == null ? null : actionConfiguration!.toMap(),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleAddIncidentTaskActionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAddIncidentTaskActionResponse(
      actionConfiguration: map['actionConfiguration'] == null ? null : AddIncidentTaskActionPropertiesResponse.fromMap((map['actionConfiguration'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      order: map['order'] as int,
    );
  }
}

