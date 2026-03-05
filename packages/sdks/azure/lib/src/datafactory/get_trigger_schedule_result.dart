// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_schedule_schedule.dart';

/// Result data returned by getTriggerSchedule.
class GetTriggerScheduleResult {
  /// Specifies if the Data Factory Schedule Trigger is activated.
  final bool activated;
  /// List of tags that can be used for describing the Data Factory Schedule Trigger.
  final List<String> annotations;
  final String dataFactoryId;
  /// The Schedule Trigger's description.
  final String description;
  /// The time the Schedule Trigger should end. The time will be represented in UTC.
  final String endTime;
  /// The trigger frequency.
  final String frequency;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The interval for how often the trigger occurs.
  final int interval;
  final String name;
  /// The Data Factory Pipeline name that the trigger will act on.
  final String pipelineName;
  /// A `schedule` block as described below, which further specifies the recurrence schedule for the trigger.
  final List<GetTriggerScheduleSchedule> schedules;
  /// The time the Schedule Trigger will start. The time will be represented in UTC.
  final String startTime;
  /// The timezone of the start/end time.
  final String timeZone;

  /// Creates a new [GetTriggerScheduleResult].
  /// [activated] Specifies if the Data Factory Schedule Trigger is activated.
  /// [annotations] List of tags that can be used for describing the Data Factory Schedule Trigger.
  /// [dataFactoryId] Required.
  /// [description] The Schedule Trigger's description.
  /// [endTime] The time the Schedule Trigger should end. The time will be represented in UTC.
  /// [frequency] The trigger frequency.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interval] The interval for how often the trigger occurs.
  /// [name] Required.
  /// [pipelineName] The Data Factory Pipeline name that the trigger will act on.
  /// [schedules] A `schedule` block as described below, which further specifies the recurrence schedule for the trigger.
  /// [startTime] The time the Schedule Trigger will start. The time will be represented in UTC.
  /// [timeZone] The timezone of the start/end time.
  GetTriggerScheduleResult({
    required this.activated,
    required this.annotations,
    required this.dataFactoryId,
    required this.description,
    required this.endTime,
    required this.frequency,
    required this.id,
    required this.interval,
    required this.name,
    required this.pipelineName,
    required this.schedules,
    required this.startTime,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': activated,
      'annotations': annotations,
      'dataFactoryId': dataFactoryId,
      'description': description,
      'endTime': endTime,
      'frequency': frequency,
      'id': id,
      'interval': interval,
      'name': name,
      'pipelineName': pipelineName,
      'schedules': pulumi.Input.encodeList<GetTriggerScheduleSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'startTime': startTime,
      'timeZone': timeZone,
    };
  }

  factory GetTriggerScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerScheduleResult(
      activated: map['activated'] as bool,
      annotations: (map['annotations'] as List).cast<String>(),
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      frequency: map['frequency'] as String,
      id: map['id'] as String,
      interval: map['interval'] as int,
      name: map['name'] as String,
      pipelineName: map['pipelineName'] as String,
      schedules: pulumi.Input.decodeList<GetTriggerScheduleSchedule>(map['schedules']!, (value) => GetTriggerScheduleSchedule.fromMap((value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}

