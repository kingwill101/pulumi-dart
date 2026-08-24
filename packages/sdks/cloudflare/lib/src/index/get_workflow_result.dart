// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_filter.dart';
import 'get_workflow_instances.dart';
import 'get_workflow_schedule.dart';

/// Result data returned by getWorkflow.
class GetWorkflowResult {
  final String? accountId;
  final String? className;
  final String? createdOn;
  final GetWorkflowFilter? filter;
  /// The ID of this resource.
  final String? id;
  final GetWorkflowInstances? instances;
  final String? modifiedOn;
  final String? name;
  final List<GetWorkflowSchedule>? schedules;
  final String? scriptName;
  final String? triggeredOn;
  final String? workflowName;

  /// Creates a new [GetWorkflowResult].
  /// [accountId] Optional.
  /// [className] Optional.
  /// [createdOn] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [instances] Optional.
  /// [modifiedOn] Optional.
  /// [name] Optional.
  /// [schedules] Optional.
  /// [scriptName] Optional.
  /// [triggeredOn] Optional.
  /// [workflowName] Optional.
  const GetWorkflowResult({
    this.accountId,
    this.className,
    this.createdOn,
    this.filter,
    this.id,
    this.instances,
    this.modifiedOn,
    this.name,
    this.schedules,
    this.scriptName,
    this.triggeredOn,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'className': ?className,
      'createdOn': ?createdOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'instances': ?instances?.toMap(),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'schedules': ?(() { final guardedValue = schedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkflowSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scriptName': ?scriptName,
      'triggeredOn': ?triggeredOn,
      'workflowName': ?workflowName,
    };
  }

  factory GetWorkflowResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      className: (() { final guardedValue = map['className']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetWorkflowFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return GetWorkflowInstances.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkflowSchedule>(guardedValue, (value) => GetWorkflowSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggeredOn: (() { final guardedValue = map['triggeredOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
