// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_muting_rule_condition.dart';
import 'alert_muting_rule_schedule.dart';

/// {@template pulumi_index_alert_muting_rule_alert_muting_rule_args_doc}
/// The set of arguments for AlertMutingRule.
/// {@endtemplate}
/// {@macro pulumi_index_alert_muting_rule_alert_muting_rule_args_doc}
class AlertMutingRuleArgs {
  /// The account id of the MutingRule.
  final pulumi.Input<String>? accountId;
  /// The action when the muting rule window is ended or disabled. Valid values are `CLOSE_ISSUES_ON_INACTIVE`, `DO_NOTHING`.
  final pulumi.Input<String>? actionOnMutingRuleWindowEnded;
  /// The condition that defines which incidents to target. See Nested condition blocks below for details.
  final pulumi.Input<AlertMutingRuleCondition> condition;
  /// The description of the MutingRule.
  final pulumi.Input<String>? description;
  /// Whether the MutingRule is enabled.
  final pulumi.Input<bool> enabled;
  /// The name of the MutingRule.
  final pulumi.Input<String>? name;
  /// Specify a schedule for enabling the MutingRule. See Schedule below for details
  final pulumi.Input<AlertMutingRuleSchedule>? schedule;

  /// Creates a new [AlertMutingRuleArgs].
  /// [accountId] The account id of the MutingRule.
  /// [actionOnMutingRuleWindowEnded] The action when the muting rule window is ended or disabled. Valid values are `CLOSE_ISSUES_ON_INACTIVE`, `DO_NOTHING`.
  /// [condition] The condition that defines which incidents to target. See Nested condition blocks below for details.
  /// [description] The description of the MutingRule.
  /// [enabled] Whether the MutingRule is enabled.
  /// [name] The name of the MutingRule.
  /// [schedule] Specify a schedule for enabling the MutingRule. See Schedule below for details
  AlertMutingRuleArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? actionOnMutingRuleWindowEnded,
    required pulumi.Output<AlertMutingRuleCondition> condition,
    pulumi.Output<String>? description,
    required pulumi.Output<bool> enabled,
    pulumi.Output<String>? name,
    pulumi.Output<AlertMutingRuleSchedule>? schedule,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      actionOnMutingRuleWindowEnded = pulumi.Input.asOptionalInput<String>(actionOnMutingRuleWindowEnded),
      condition = pulumi.Input.asInput<AlertMutingRuleCondition>(condition),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      schedule = pulumi.Input.asOptionalInput<AlertMutingRuleSchedule>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actionOnMutingRuleWindowEnded': ?actionOnMutingRuleWindowEnded,
      'condition': pulumi.Input.mapInputValue<AlertMutingRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'description': ?description,
      'enabled': enabled,
      'name': ?name,
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertMutingRuleSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory AlertMutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return AlertMutingRuleArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      actionOnMutingRuleWindowEnded: map['actionOnMutingRuleWindowEnded'] == null ? null : pulumi.Output.create<String>(map['actionOnMutingRuleWindowEnded'] as String),
      condition: pulumi.Output.create<AlertMutingRuleCondition>(AlertMutingRuleCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<AlertMutingRuleSchedule>(AlertMutingRuleSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
    );
  }
}

