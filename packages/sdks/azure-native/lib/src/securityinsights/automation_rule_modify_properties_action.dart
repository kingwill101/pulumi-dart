// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_properties_action.dart';

/// Describes an automation rule action to modify an object's properties
class AutomationRuleModifyPropertiesAction {
  final pulumi.Input<IncidentPropertiesAction>? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'ModifyProperties'.
  final pulumi.Input<String> actionType;
  final pulumi.Input<int> order;

  /// Creates a new [AutomationRuleModifyPropertiesAction].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  const AutomationRuleModifyPropertiesAction({
    this.actionConfiguration,
    required this.actionType,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<IncidentPropertiesAction, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleModifyPropertiesAction.fromMap(Map<String, dynamic> map) {
    return AutomationRuleModifyPropertiesAction(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentPropertiesAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
    );
  }
}
