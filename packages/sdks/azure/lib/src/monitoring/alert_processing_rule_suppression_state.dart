// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_suppression_condition.dart';
import 'alert_processing_rule_suppression_schedule.dart';

/// Input properties used for looking up and filtering AlertProcessingRuleSuppression resources.
class AlertProcessingRuleSuppressionState {
  /// A `condition` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionCondition>? condition;
  /// Specifies a description for the Alert Processing Rule.
  final pulumi.Input<String>? description;
  /// Should the Alert Processing Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `schedule` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionSchedule>? schedule;
  /// A list of resource IDs which will be the target of Alert Processing Rule.
  final pulumi.Input<List<String>>? scopes;
  /// A mapping of tags which should be assigned to the Alert Processing Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlertProcessingRuleSuppressionState].
  /// [condition] A `condition` block as defined below.
  /// [description] Specifies a description for the Alert Processing Rule.
  /// [enabled] Should the Alert Processing Rule be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  /// [schedule] A `schedule` block as defined below.
  /// [scopes] A list of resource IDs which will be the target of Alert Processing Rule.
  /// [tags] A mapping of tags which should be assigned to the Alert Processing Rule.
  AlertProcessingRuleSuppressionState({
    pulumi.Output<AlertProcessingRuleSuppressionCondition>? condition,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<AlertProcessingRuleSuppressionSchedule>? schedule,
    pulumi.Output<List<String>>? scopes,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      condition = pulumi.Input.asOptionalInput<AlertProcessingRuleSuppressionCondition>(condition),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      schedule = pulumi.Input.asOptionalInput<AlertProcessingRuleSuppressionSchedule>(schedule),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scopes': ?scopes,
      'tags': ?tags,
    };
  }

  factory AlertProcessingRuleSuppressionState.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionState(
      condition: map['condition'] == null ? null : pulumi.Output.create<AlertProcessingRuleSuppressionCondition>(AlertProcessingRuleSuppressionCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<AlertProcessingRuleSuppressionSchedule>(AlertProcessingRuleSuppressionSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

