// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_schedule_pipeline.dart';
import 'trigger_schedule_schedule.dart';

/// Input properties used for looking up and filtering TriggerSchedule resources.
class TriggerScheduleState {
  /// Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`.
  final pulumi.Input<bool>? activated;
  /// List of tags that can be used for describing the Data Factory Schedule Trigger.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The Schedule Trigger's description.
  final pulumi.Input<String>? description;
  /// The time the Schedule Trigger should end. The time will be represented in UTC.
  final pulumi.Input<String>? endTime;
  /// The trigger frequency. Valid values include `Minute`, `Hour`, `Day`, `Week`, `Month`. Defaults to `Minute`.
  final pulumi.Input<String>? frequency;
  /// The interval for how often the trigger occurs. This defaults to `1`.
  final pulumi.Input<int>? interval;
  /// Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// The Data Factory Pipeline name that the trigger will act on.
  final pulumi.Input<String>? pipelineName;
  /// The pipeline parameters that the trigger will act upon.
  final pulumi.Input<Map<String, String>>? pipelineParameters;
  /// A `pipeline` block as defined below.
  final pulumi.Input<List<TriggerSchedulePipeline>>? pipelines;
  /// A `schedule` block as defined below, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the `frequency` and `interval` properties.
  final pulumi.Input<TriggerScheduleSchedule>? schedule;
  /// The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC.
  final pulumi.Input<String>? startTime;
  /// The timezone of the start/end time.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [TriggerScheduleState].
  /// [activated] Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`.
  /// [annotations] List of tags that can be used for describing the Data Factory Schedule Trigger.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The Schedule Trigger's description.
  /// [endTime] The time the Schedule Trigger should end. The time will be represented in UTC.
  /// [frequency] The trigger frequency. Valid values include `Minute`, `Hour`, `Day`, `Week`, `Month`. Defaults to `Minute`.
  /// [interval] The interval for how often the trigger occurs. This defaults to `1`.
  /// [name] Specifies the name of the Data Factory Schedule Trigger. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [pipelineName] The Data Factory Pipeline name that the trigger will act on.
  /// [pipelineParameters] The pipeline parameters that the trigger will act upon.
  /// [pipelines] A `pipeline` block as defined below.
  /// [schedule] A `schedule` block as defined below, which further specifies the recurrence schedule for the trigger. A schedule is capable of limiting or increasing the number of trigger executions specified by the `frequency` and `interval` properties.
  /// [startTime] The time the Schedule Trigger will start. This defaults to the current time. The time will be represented in UTC.
  /// [timeZone] The timezone of the start/end time.
  TriggerScheduleState({
    this.activated,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.endTime,
    this.frequency,
    this.interval,
    this.name,
    this.pipelineName,
    this.pipelineParameters,
    this.pipelines,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': ?activated,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'endTime': ?endTime,
      'frequency': ?frequency,
      'interval': ?interval,
      'name': ?name,
      'pipelineName': ?pipelineName,
      'pipelineParameters': ?pipelineParameters,
      'pipelines': ?pulumi.Input.mapOptionalInputValue<List<TriggerSchedulePipeline>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerSchedulePipeline, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': ?pulumi.Input.mapOptionalInputValue<TriggerScheduleSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory TriggerScheduleState.fromMap(Map<String, dynamic> map) {
    return TriggerScheduleState(
      activated: map['activated'] == null ? null : (map['activated']! as bool).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pipelineName: map['pipelineName'] == null ? null : (map['pipelineName']! as String).input(),
      pipelineParameters: map['pipelineParameters'] == null ? null : ((map['pipelineParameters']! as Map).cast<String, String>()).input(),
      pipelines: map['pipelines'] == null ? null : (pulumi.Input.decodeList<TriggerSchedulePipeline>(map['pipelines']!, (value) => TriggerSchedulePipeline.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schedule: map['schedule'] == null ? null : (TriggerScheduleSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

