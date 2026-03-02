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
  GetScheduleArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scheduleId: (map['scheduleId'] as String).input(),
    );
  }
}

