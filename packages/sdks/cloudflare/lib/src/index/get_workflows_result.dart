// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflows_result_instances.dart';
import 'get_workflows_result_schedule.dart';

class GetWorkflowsResult {
  final pulumi.Input<String> className;
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> id;
  final pulumi.Input<GetWorkflowsResultInstances> instances;
  final pulumi.Input<String> modifiedOn;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetWorkflowsResultSchedule>> schedules;
  final pulumi.Input<String> scriptName;
  final pulumi.Input<String> triggeredOn;

  /// Creates a new [GetWorkflowsResult].
  /// [className] Required.
  /// [createdOn] Required.
  /// [id] Required.
  /// [instances] Required.
  /// [modifiedOn] Required.
  /// [name] Required.
  /// [schedules] Required.
  /// [scriptName] Required.
  /// [triggeredOn] Required.
  const GetWorkflowsResult({
    required this.className,
    required this.createdOn,
    required this.id,
    required this.instances,
    required this.modifiedOn,
    required this.name,
    required this.schedules,
    required this.scriptName,
    required this.triggeredOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
      'createdOn': createdOn,
      'id': id,
      'instances': pulumi.Input.mapInputValue<GetWorkflowsResultInstances, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'modifiedOn': modifiedOn,
      'name': name,
      'schedules': pulumi.Input.mapInputValue<List<GetWorkflowsResultSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetWorkflowsResultSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': scriptName,
      'triggeredOn': triggeredOn,
    };
  }

  factory GetWorkflowsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowsResult(
      className: pulumi.Input.fromValue(map['className'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue(GetWorkflowsResultInstances.fromMap((map['instances']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkflowsResultSchedule>(map['schedules']!, (value) => GetWorkflowsResultSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      triggeredOn: pulumi.Input.fromValue(map['triggeredOn'] as String),
    );
  }
}
