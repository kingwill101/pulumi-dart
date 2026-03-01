// ignore_for_file: unused_element, unnecessary_cast

import 'playbook_action_properties_response.dart';

/// Describes an automation rule action to run a playbook
class AutomationRuleRunPlaybookActionResponse {
  final PlaybookActionPropertiesResponse? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'RunPlaybook'.
  final String actionType;
  final int order;

  /// Creates a new [AutomationRuleRunPlaybookActionResponse].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleRunPlaybookActionResponse({
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

  factory AutomationRuleRunPlaybookActionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRunPlaybookActionResponse(
      actionConfiguration: map['actionConfiguration'] == null ? null : PlaybookActionPropertiesResponse.fromMap((map['actionConfiguration'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      order: map['order'] as int,
    );
  }
}

