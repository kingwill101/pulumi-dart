// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_action_group_condition.dart';
import 'alert_processing_rule_action_group_schedule.dart';

/// {@template pulumi_monitoring_alert_processing_rule_action_group_alert_processing_rule_action_group_args_doc}
/// The set of arguments for AlertProcessingRuleActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitoring_alert_processing_rule_action_group_alert_processing_rule_action_group_args_doc}
class AlertProcessingRuleActionGroupArgs {
  /// Specifies a list of Action Group IDs.
  final pulumi.Input<List<String>> addActionGroupIds;
  /// A `condition` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupCondition>? condition;
  /// Specifies a description for the Alert Processing Rule.
  final pulumi.Input<String>? description;
  /// Should the Alert Processing Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `schedule` block as defined below.
  final pulumi.Input<AlertProcessingRuleActionGroupSchedule>? schedule;
  /// A list of resource IDs which will be the target of alert processing rule.
  final pulumi.Input<List<String>> scopes;
  /// A mapping of tags which should be assigned to the Alert Processing Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlertProcessingRuleActionGroupArgs].
  /// [addActionGroupIds] Specifies a list of Action Group IDs.
  /// [condition] A `condition` block as defined below.
  /// [description] Specifies a description for the Alert Processing Rule.
  /// [enabled] Should the Alert Processing Rule be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  /// [schedule] A `schedule` block as defined below.
  /// [scopes] A list of resource IDs which will be the target of alert processing rule.
  /// [tags] A mapping of tags which should be assigned to the Alert Processing Rule.
  AlertProcessingRuleActionGroupArgs({
    required pulumi.Output<List<String>> addActionGroupIds,
    pulumi.Output<AlertProcessingRuleActionGroupCondition>? condition,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AlertProcessingRuleActionGroupSchedule>? schedule,
    required pulumi.Output<List<String>> scopes,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      addActionGroupIds = pulumi.Input.asInput<List<String>>(addActionGroupIds),
      condition = pulumi.Input.asOptionalInput<AlertProcessingRuleActionGroupCondition>(condition),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedule = pulumi.Input.asOptionalInput<AlertProcessingRuleActionGroupSchedule>(schedule),
      scopes = pulumi.Input.asInput<List<String>>(scopes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addActionGroupIds': addActionGroupIds,
      'condition': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scopes': scopes,
      'tags': ?tags,
    };
  }

  factory AlertProcessingRuleActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupArgs(
      addActionGroupIds: pulumi.Output.create<List<String>>((map['addActionGroupIds'] as List).cast<String>()),
      condition: map['condition'] == null ? null : pulumi.Output.create<AlertProcessingRuleActionGroupCondition>(AlertProcessingRuleActionGroupCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<AlertProcessingRuleActionGroupSchedule>(AlertProcessingRuleActionGroupSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scopes: pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

