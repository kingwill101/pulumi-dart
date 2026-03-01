// ignore_for_file: unused_element, unnecessary_cast

import 'incident_properties_action_response.dart';

/// Describes an automation rule action to modify an object's properties
class AutomationRuleModifyPropertiesActionResponse {
  final IncidentPropertiesActionResponse? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'ModifyProperties'.
  final String actionType;
  final int order;

  /// Creates a new [AutomationRuleModifyPropertiesActionResponse].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleModifyPropertiesActionResponse({
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

  factory AutomationRuleModifyPropertiesActionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleModifyPropertiesActionResponse(
      actionConfiguration: map['actionConfiguration'] == null ? null : IncidentPropertiesActionResponse.fromMap((map['actionConfiguration'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      order: map['order'] as int,
    );
  }
}

