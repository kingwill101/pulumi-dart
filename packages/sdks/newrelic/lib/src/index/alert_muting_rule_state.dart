// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_muting_rule_condition.dart';
import 'alert_muting_rule_schedule.dart';

/// Input properties used for looking up and filtering AlertMutingRule resources.
class AlertMutingRuleState {
  /// The account id of the MutingRule.
  final pulumi.Input<String>? accountId;
  /// The action when the muting rule window is ended or disabled. Valid values are `CLOSE_ISSUES_ON_INACTIVE`, `DO_NOTHING`.
  final pulumi.Input<String>? actionOnMutingRuleWindowEnded;
  /// The condition that defines which incidents to target. See Nested condition blocks below for details.
  final pulumi.Input<AlertMutingRuleCondition>? condition;
  /// The description of the MutingRule.
  final pulumi.Input<String>? description;
  /// Whether the MutingRule is enabled.
  final pulumi.Input<bool>? enabled;
  /// The name of the MutingRule.
  final pulumi.Input<String>? name;
  /// Specify a schedule for enabling the MutingRule. See Schedule below for details
  final pulumi.Input<AlertMutingRuleSchedule>? schedule;

  /// Creates a new [AlertMutingRuleState].
  /// [accountId] The account id of the MutingRule.
  /// [actionOnMutingRuleWindowEnded] The action when the muting rule window is ended or disabled. Valid values are `CLOSE_ISSUES_ON_INACTIVE`, `DO_NOTHING`.
  /// [condition] The condition that defines which incidents to target. See Nested condition blocks below for details.
  /// [description] The description of the MutingRule.
  /// [enabled] Whether the MutingRule is enabled.
  /// [name] The name of the MutingRule.
  /// [schedule] Specify a schedule for enabling the MutingRule. See Schedule below for details
  AlertMutingRuleState({
    this.accountId,
    this.actionOnMutingRuleWindowEnded,
    this.condition,
    this.description,
    this.enabled,
    this.name,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actionOnMutingRuleWindowEnded': ?actionOnMutingRuleWindowEnded,
      'condition': ?pulumi.Input.mapOptionalInputValue<AlertMutingRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertMutingRuleSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory AlertMutingRuleState.fromMap(Map<String, dynamic> map) {
    return AlertMutingRuleState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionOnMutingRuleWindowEnded: (() { final guardedValue = map['actionOnMutingRuleWindowEnded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertMutingRuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertMutingRuleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

