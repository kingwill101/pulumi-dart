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
  SummaryLogArgs({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleDefinition: map['ruleDefinition'] == null ? null : (RuleDefinition.fromMap((map['ruleDefinition'] as Map).cast<String, dynamic>())).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
      summaryLogsName: map['summaryLogsName'] == null ? null : (map['summaryLogsName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

