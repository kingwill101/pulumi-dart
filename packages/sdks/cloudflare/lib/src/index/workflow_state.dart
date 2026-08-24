// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_default_retention.dart';
import 'workflow_instances.dart';
import 'workflow_limits.dart';
import 'workflow_schedule.dart';

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? className;
  final pulumi.Input<String?>? createdOn;
  /// Default retention applied to instances of this version when they do not set their own retention.
  final pulumi.Input<WorkflowDefaultRetention?>? defaultRetention;
  final pulumi.Input<WorkflowInstances?>? instances;
  final pulumi.Input<double?>? isDeleted;
  final pulumi.Input<WorkflowLimits?>? limits;
  final pulumi.Input<String?>? modifiedOn;
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<WorkflowSchedule>?>? schedules;
  final pulumi.Input<String?>? scriptName;
  final pulumi.Input<double?>? terminatorRunning;
  final pulumi.Input<String?>? triggeredOn;
  final pulumi.Input<String?>? versionId;
  final pulumi.Input<String?>? workflowName;

  /// Creates a new [WorkflowState].
  /// [accountId] Optional.
  /// [className] Optional.
  /// [createdOn] Optional.
  /// [defaultRetention] Default retention applied to instances of this version when they do not set their own retention.
  /// [instances] Optional.
  /// [isDeleted] Optional.
  /// [limits] Optional.
  /// [modifiedOn] Optional.
  /// [name] Optional.
  /// [schedules] Optional.
  /// [scriptName] Optional.
  /// [terminatorRunning] Optional.
  /// [triggeredOn] Optional.
  /// [versionId] Optional.
  /// [workflowName] Optional.
  const WorkflowState({
    this.accountId,
    this.className,
    this.createdOn,
    this.defaultRetention,
    this.instances,
    this.isDeleted,
    this.limits,
    this.modifiedOn,
    this.name,
    this.schedules,
    this.scriptName,
    this.terminatorRunning,
    this.triggeredOn,
    this.versionId,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'className': ?className,
      'createdOn': ?createdOn,
      'defaultRetention': ?pulumi.Input.mapOptionalInputValue<WorkflowDefaultRetention, Map<String, dynamic>>(defaultRetention, (value) => value.toMap()),
      'instances': ?pulumi.Input.mapOptionalInputValue<WorkflowInstances, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'isDeleted': ?isDeleted,
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkflowLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<WorkflowSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<WorkflowSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': ?scriptName,
      'terminatorRunning': ?terminatorRunning,
      'triggeredOn': ?triggeredOn,
      'versionId': ?versionId,
      'workflowName': ?workflowName,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      className: (() { final guardedValue = map['className']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRetention: (() { final guardedValue = map['defaultRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowDefaultRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowInstances.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowSchedule>(guardedValue, (value) => WorkflowSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminatorRunning: (() { final guardedValue = map['terminatorRunning']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      triggeredOn: (() { final guardedValue = map['triggeredOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
