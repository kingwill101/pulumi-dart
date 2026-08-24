// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_filter.dart';

/// {@template pulumi_index_get_workflow_get_workflow_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_index_get_workflow_get_workflow_args_doc}
class GetWorkflowArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetWorkflowFilter?>? filter;
  final pulumi.Input<String?>? workflowName;

  /// Creates a new [GetWorkflowArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [workflowName] Optional.
  const GetWorkflowArgs({
    this.accountId,
    this.filter,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetWorkflowFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'workflowName': ?workflowName,
    };
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWorkflowFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
