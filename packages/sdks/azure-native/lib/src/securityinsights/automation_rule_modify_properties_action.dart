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
  AutomationRuleModifyPropertiesAction({
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
      actionConfiguration: map['actionConfiguration'] == null ? null : (IncidentPropertiesAction.fromMap((map['actionConfiguration']! as Map).cast<String, dynamic>())).input(),
      actionType: (map['actionType'] as String).input(),
      order: (map['order'] as int).input(),
    );
  }
}

