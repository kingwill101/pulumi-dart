// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_action.dart';
import 'google_cloud_contentwarehouse_v1_rule_trigger_type.dart';

/// Represents the rule for a content warehouse trigger.
class GoogleCloudContentwarehouseV1Rule {
  /// List of actions that are executed when the rule is satisfied.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1Action>>? actions;
  /// Represents the conditional expression to be evaluated. Expression should evaluate to a boolean result. When the condition is true actions are executed. Example: user_role = "hsbc_role_1" AND doc.salary &gt; 20000
  final pulumi.Input<String>? condition;
  /// Short description of the rule and its context.
  final pulumi.Input<String>? description;
  /// ID of the rule. It has to be unique across all the examples. This is managed internally.
  final pulumi.Input<String>? ruleId;
  /// Identifies the trigger type for running the policy.
  final pulumi.Input<GoogleCloudContentwarehouseV1RuleTriggerType>? triggerType;

  /// Creates a new [GoogleCloudContentwarehouseV1Rule].
  /// [actions] List of actions that are executed when the rule is satisfied.
  /// [condition] Represents the conditional expression to be evaluated. Expression should evaluate to a boolean result. When the condition is true actions are executed. Example: user_role = "hsbc_role_1" AND doc.salary &gt; 20000
  /// [description] Short description of the rule and its context.
  /// [ruleId] ID of the rule. It has to be unique across all the examples. This is managed internally.
  /// [triggerType] Identifies the trigger type for running the policy.
  const GoogleCloudContentwarehouseV1Rule({
    this.actions,
    this.condition,
    this.description,
    this.ruleId,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1Action>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1Action, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
      'description': ?description,
      'ruleId': ?ruleId,
      'triggerType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1RuleTriggerType, String>(triggerType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudContentwarehouseV1Rule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1Rule(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1Action>(guardedValue, (value) => GoogleCloudContentwarehouseV1Action.fromMap((value as Map).cast<String, dynamic>()))); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1RuleTriggerType.fromValue(guardedValue as String)); })(),
    );
  }
}

