// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStartStopManagedInstanceSchedule.
class GetStartStopManagedInstanceScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of the schedule.
  final String? description;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Timestamp when the next action will be executed in the corresponding schedule time zone.
  final String nextExecutionTime;
  /// Next action to be executed (Start or Stop)
  final String nextRunAction;
  /// Schedule list.
  final List<ScheduleItemResponse> scheduleList;
  /// System data of the scheduled resource.
  final SystemDataResponse systemData;
  /// The time zone of the schedule.
  final String? timeZoneId;
  /// Resource type.
  final String type;

  /// Creates a new [GetStartStopManagedInstanceScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the schedule.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [nextExecutionTime] Timestamp when the next action will be executed in the corresponding schedule time zone.
  /// [nextRunAction] Next action to be executed (Start or Stop)
  /// [scheduleList] Schedule list.
  /// [systemData] System data of the scheduled resource.
  /// [timeZoneId] The time zone of the schedule.
  /// [type] Resource type.
  GetStartStopManagedInstanceScheduleResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.name,
    required this.nextExecutionTime,
    required this.nextRunAction,
    required this.scheduleList,
    required this.systemData,
    this.timeZoneId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'name': name,
      'nextExecutionTime': nextExecutionTime,
      'nextRunAction': nextRunAction,
      'scheduleList': pulumi.Input.encodeList<ScheduleItemResponse, Map<String, dynamic>>(scheduleList, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'timeZoneId': ?timeZoneId,
      'type': type,
    };
  }

  factory GetStartStopManagedInstanceScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetStartStopManagedInstanceScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nextExecutionTime: map['nextExecutionTime'] as String,
      nextRunAction: map['nextRunAction'] as String,
      scheduleList: pulumi.Input.decodeList<ScheduleItemResponse>(map['scheduleList'], (value) => ScheduleItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      timeZoneId: map['timeZoneId'] == null ? null : map['timeZoneId'] as String,
      type: map['type'] as String,
    );
  }
}

