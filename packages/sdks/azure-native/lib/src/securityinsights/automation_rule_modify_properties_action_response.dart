// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_properties_action_response.dart';

/// Describes an automation rule action to modify an object's properties
class AutomationRuleModifyPropertiesActionResponse {
  final pulumi.Input<IncidentPropertiesActionResponse?>? actionConfiguration;
  /// The type of the automation rule action.
  /// Expected value is 'ModifyProperties'.
  final pulumi.Input<String> actionType;
  final pulumi.Input<int> order;

  /// Creates a new [AutomationRuleModifyPropertiesActionResponse].
  /// [actionConfiguration] Optional.
  /// [actionType] The type of the automation rule action.
  /// [order] Required.
  const AutomationRuleModifyPropertiesActionResponse({
    this.actionConfiguration,
    required this.actionType,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfiguration': ?pulumi.Input.mapOptionalInputValue<IncidentPropertiesActionResponse, Map<String, dynamic>>(actionConfiguration, (value) => value.toMap()),
      'actionType': actionType,
      'order': order,
    };
  }

  factory AutomationRuleModifyPropertiesActionResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleModifyPropertiesActionResponse(
      actionConfiguration: (() { final guardedValue = map['actionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IncidentPropertiesActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      order: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['order'])),
    );
  }
}
