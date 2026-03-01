// ignore_for_file: unused_element, unnecessary_cast

import 'add_incident_task_action_properties.dart';

/// Describes an automation rule action to add a task to an incident
class AutomationRuleAddIncidentTaskAction {
  /// Describes an automation rule action to add a task to an incident.
  final AddIncidentTaskActionProperties? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'AddIncidentTask'.
  final String actionType;
  final int order;

  /// Creates a new [AutomationRuleAddIncidentTaskAction].
  /// [actionConfiguration] Describes an automation rule action to add a task to an incident.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleAddIncidentTaskAction({
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

  factory AutomationRuleAddIncidentTaskAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleAddIncidentTaskAction(
      actionConfiguration: map['actionConfiguration'] == null ? null : AddIncidentTaskActionProperties.fromMap((map['actionConfiguration'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      order: map['order'] as int,
    );
  }
}

