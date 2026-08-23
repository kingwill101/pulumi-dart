// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_definition.dart';

/// {@template pulumi_operationalinsights_summary_log_args_doc}
/// The set of arguments for SummaryLog.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_summary_log_args_doc}
class SummaryLogArgs {
  /// The description of the Summary rule.
  final pulumi.Input<String>? description;
  /// The display name of the Summary rule.
  final pulumi.Input<String>? displayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Rule definition parameters.
  final pulumi.Input<RuleDefinition>? ruleDefinition;
  /// SummaryRules rule type: User.
  final pulumi.Input<String>? ruleType;
  /// The name of the summary logs. Must not contain '/'.
  final pulumi.Input<String>? summaryLogsName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SummaryLogArgs].
  /// [description] The description of the Summary rule.
  /// [displayName] The display name of the Summary rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleDefinition] Rule definition parameters.
  /// [ruleType] SummaryRules rule type: User.
  /// [summaryLogsName] The name of the summary logs. Must not contain '/'.
  /// [workspaceName] The name of the workspace.
  const SummaryLogArgs({
    this.description,
    this.displayName,
    required this.resourceGroupName,
    this.ruleDefinition,
    this.ruleType,
    this.summaryLogsName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'resourceGroupName': resourceGroupName,
      'ruleDefinition': ?pulumi.Input.mapOptionalInputValue<RuleDefinition, Map<String, dynamic>>(ruleDefinition, (value) => value.toMap()),
      'ruleType': ?ruleType,
      'summaryLogsName': ?summaryLogsName,
      'workspaceName': workspaceName,
    };
  }

  factory SummaryLogArgs.fromMap(Map<String, dynamic> map) {
    return SummaryLogArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleDefinition: (() { final guardedValue = map['ruleDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summaryLogsName: (() { final guardedValue = map['summaryLogsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
