// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'playbook_action_properties.dart';

/// Describes an automation rule action to run a playbook
class AutomationRuleRunPlaybookAction {
  final pulumi.Input<PlaybookActionProperties?>? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'RunPlaybook'.
  final pulumi.Input<String> actionType;
  final pulumi.Input<int> order;

  /// Creates a new [AutomationRuleRunPlaybookAction].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  const AutomationRuleRunPlaybookAction({
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
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlaybookActionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      order: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['order'])),
    );
  }
}
