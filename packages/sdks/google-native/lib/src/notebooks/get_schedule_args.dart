// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v1_get_schedule_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_get_schedule_args_doc}
class GetScheduleArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scheduleId;

  /// Creates a new [GetScheduleArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [scheduleId] Required.
  const GetScheduleArgs({
    required this.location,
    this.project,
    required this.scheduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'scheduleId': scheduleId,
    };
  }

  factory GetScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleId: pulumi.Input.fromValue(map['scheduleId'] as String),
    );
  }
}
