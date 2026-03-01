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
  TriggerScheduleArgs({
    pulumi.Output<bool>? activated,
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? frequency,
    pulumi.Output<int>? interval,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pipelineName,
    pulumi.Output<Map<String, String>>? pipelineParameters,
    pulumi.Output<List<TriggerSchedulePipeline>>? pipelines,
    pulumi.Output<TriggerScheduleSchedule>? schedule,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? timeZone,
  }) :
      activated = pulumi.Input.asOptionalInput<bool>(activated),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelineName = pulumi.Input.asOptionalInput<String>(pipelineName),
      pipelineParameters = pulumi.Input.asOptionalInput<Map<String, String>>(pipelineParameters),
      pipelines = pulumi.Input.asOptionalInput<List<TriggerSchedulePipeline>>(pipelines),
      schedule = pulumi.Input.asOptionalInput<TriggerScheduleSchedule>(schedule),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      activated: map['activated'] == null ? null : pulumi.Output.create<bool>(map['activated'] as bool),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pipelineName: map['pipelineName'] == null ? null : pulumi.Output.create<String>(map['pipelineName'] as String),
      pipelineParameters: map['pipelineParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pipelineParameters'] as Map).cast<String, String>()),
      pipelines: map['pipelines'] == null ? null : pulumi.Output.create<List<TriggerSchedulePipeline>>(pulumi.Input.decodeList<TriggerSchedulePipeline>(map['pipelines'], (value) => TriggerSchedulePipeline.fromMap((value as Map).cast<String, dynamic>()))),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<TriggerScheduleSchedule>(TriggerScheduleSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

