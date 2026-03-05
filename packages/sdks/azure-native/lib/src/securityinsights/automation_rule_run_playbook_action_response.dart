// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'playbook_action_properties_response.dart';

/// Describes an automation rule action to run a playbook
class AutomationRuleRunPlaybookActionResponse {
  final pulumi.Input<PlaybookActionPropertiesResponse>? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'RunPlaybook'.
  final pulumi.Input<String> actionType;
  final pulumi.Input<int> order;

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
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<PlaybookActionPropertiesResponse, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleRunPlaybookActionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRunPlaybookActionResponse(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlaybookActionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
    );
  }
}

