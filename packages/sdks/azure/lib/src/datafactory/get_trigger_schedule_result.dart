// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_schedule_schedule.dart';

/// Result data returned by getTriggerSchedule.
class GetTriggerScheduleResult {
  /// Specifies if the Data Factory Schedule Trigger is activated.
  final bool? activated;
  /// List of tags that can be used for describing the Data Factory Schedule Trigger.
  final List<String>? annotations;
  final String? dataFactoryId;
  /// The Schedule Trigger's description.
  final String? description;
  /// The time the Schedule Trigger should end. The time will be represented in UTC.
  final String? endTime;
  /// The trigger frequency.
  final String? frequency;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The interval for how often the trigger occurs.
  final int? interval;
  final String? name;
  /// The Data Factory Pipeline name that the trigger will act on.
  final String? pipelineName;
  /// A `schedule` block as described below, which further specifies the recurrence schedule for the trigger.
  final List<GetTriggerScheduleSchedule>? schedules;
  /// The time the Schedule Trigger will start. The time will be represented in UTC.
  final String? startTime;
  /// The timezone of the start/end time.
  final String? timeZone;

  /// Creates a new [GetTriggerScheduleResult].
  /// [activated] Specifies if the Data Factory Schedule Trigger is activated.
  /// [annotations] List of tags that can be used for describing the Data Factory Schedule Trigger.
  /// [dataFactoryId] Optional.
  /// [description] The Schedule Trigger's description.
  /// [endTime] The time the Schedule Trigger should end. The time will be represented in UTC.
  /// [frequency] The trigger frequency.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interval] The interval for how often the trigger occurs.
  /// [name] Optional.
  /// [pipelineName] The Data Factory Pipeline name that the trigger will act on.
  /// [schedules] A `schedule` block as described below, which further specifies the recurrence schedule for the trigger.
  /// [startTime] The time the Schedule Trigger will start. The time will be represented in UTC.
  /// [timeZone] The timezone of the start/end time.
  const GetTriggerScheduleResult({
    this.activated,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.endTime,
    this.frequency,
    this.id,
    this.interval,
    this.name,
    this.pipelineName,
    this.schedules,
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
      'id': ?id,
      'interval': ?interval,
      'name': ?name,
      'pipelineName': ?pipelineName,
      'schedules': ?(() { final guardedValue = schedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTriggerScheduleSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory GetTriggerScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerScheduleResult(
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pipelineName: (() { final guardedValue = map['pipelineName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTriggerScheduleSchedule>(guardedValue, (value) => GetTriggerScheduleSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
