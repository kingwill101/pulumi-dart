// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'playbook_action_properties.dart';

/// Describes an automation rule action to run a playbook
class AutomationRuleRunPlaybookAction {
  final pulumi.Input<PlaybookActionProperties>? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'RunPlaybook'.
  final pulumi.Input<String> actionType;
  final pulumi.Input<int> order;

  /// Creates a new [AutomationRuleRunPlaybookAction].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  AutomationRuleRunPlaybookAction({
    this.actionConfiguration,
    required this.actionType,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<PlaybookActionProperties, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleRunPlaybookAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRunPlaybookAction(
      actionConfiguration: map['actionConfiguration'] == null ? null : (PlaybookActionProperties.fromMap((map['actionConfiguration']! as Map).cast<String, dynamic>())).input(),
      actionType: (map['actionType'] as String).input(),
      order: (map['order'] as int).input(),
    );
  }
}

