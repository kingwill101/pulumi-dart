// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_summary_log_args_doc}
/// Arguments for getSummaryLog.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_summary_log_args_doc}
class GetSummaryLogArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the summary logs. Must not contain '/'.
  final pulumi.Input<String> summaryLogsName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSummaryLogArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [summaryLogsName] The name of the summary logs. Must not contain '/'.
  /// [workspaceName] The name of the workspace.
  const GetSummaryLogArgs({
    required this.resourceGroupName,
    required this.summaryLogsName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'summaryLogsName': summaryLogsName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSummaryLogArgs.fromMap(Map<String, dynamic> map) {
    return GetSummaryLogArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      summaryLogsName: pulumi.Input.fromValue(map['summaryLogsName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
