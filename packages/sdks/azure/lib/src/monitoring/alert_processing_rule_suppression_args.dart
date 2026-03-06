// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_suppression_condition.dart';
import 'alert_processing_rule_suppression_schedule.dart';

/// {@template pulumi_monitoring_alert_processing_rule_suppression_alert_processing_rule_suppression_args_doc}
/// The set of arguments for AlertProcessingRuleSuppression.
/// {@endtemplate}
/// {@macro pulumi_monitoring_alert_processing_rule_suppression_alert_processing_rule_suppression_args_doc}
class AlertProcessingRuleSuppressionArgs {
  /// A `condition` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionCondition>? condition;
  /// Specifies a description for the Alert Processing Rule.
  final pulumi.Input<String>? description;
  /// Should the Alert Processing Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `schedule` block as defined below.
  final pulumi.Input<AlertProcessingRuleSuppressionSchedule>? schedule;
  /// A list of resource IDs which will be the target of Alert Processing Rule.
  final pulumi.Input<List<String>> scopes;
  /// A mapping of tags which should be assigned to the Alert Processing Rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlertProcessingRuleSuppressionArgs].
  /// [condition] A `condition` block as defined below.
  /// [description] Specifies a description for the Alert Processing Rule.
  /// [enabled] Should the Alert Processing Rule be enabled? Defaults to `true`.
  /// [name] The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  /// [schedule] A `schedule` block as defined below.
  /// [scopes] A list of resource IDs which will be the target of Alert Processing Rule.
  /// [tags] A mapping of tags which should be assigned to the Alert Processing Rule.
  const AlertProcessingRuleSuppressionArgs({
    this.condition,
    this.description,
    this.enabled,
    this.name,
    required this.resourceGroupName,
    this.schedule,
    required this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleSuppressionSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scopes': scopes,
      'tags': ?tags,
    };
  }

  factory AlertProcessingRuleSuppressionArgs.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertProcessingRuleSuppressionSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

