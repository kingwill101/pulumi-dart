// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_schedule_pipeline.dart';
import 'trigger_schedule_schedule.dart';

/// {@template pulumi_datafactory_trigger_schedule_trigger_schedule_args_doc}
/// The set of arguments for TriggerSchedule.
/// {@endtemplate}
/// {@macro pulumi_datafactory_trigger_schedule_trigger_schedule_args_doc}
class TriggerScheduleArgs {
  /// Specifies if the Data Factory Schedule Trigger is activated. Defaults to `true`.
  final pulumi.Input<bool>? activated;
  /// List of tags that can be used for describing the Data Factory Schedule Trigger.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
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

  /// Creates a new [TriggerScheduleArgs].
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
  const TriggerScheduleArgs({
    this.activated,
    this.annotations,
    required this.dataFactoryId,
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
      'dataFactoryId': dataFactoryId,
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

  factory TriggerScheduleArgs.fromMap(Map<String, dynamic> map) {
    return TriggerScheduleArgs(
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineName: (() { final guardedValue = map['pipelineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineParameters: (() { final guardedValue = map['pipelineParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pipelines: (() { final guardedValue = map['pipelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerSchedulePipeline>(guardedValue, (value) => TriggerSchedulePipeline.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerScheduleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

