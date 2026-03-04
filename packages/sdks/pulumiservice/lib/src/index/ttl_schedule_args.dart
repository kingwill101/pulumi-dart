// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ttl_schedule_args_doc}
/// The set of arguments for TtlSchedule.
/// {@endtemplate}
/// {@macro pulumi_index_ttl_schedule_args_doc}
class TtlScheduleArgs {
  /// True if the stack and all associated history and settings should be deleted.
  final pulumi.Input<bool>? deleteAfterDestroy;

  /// Organization name.
  final pulumi.Input<String> organization;

  /// Project name.
  final pulumi.Input<String> project;

  /// Stack name.
  final pulumi.Input<String> stack;

  /// The time at which the schedule should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z.
  final pulumi.Input<String> timestamp;

  /// Creates a new [TtlScheduleArgs].
  /// [deleteAfterDestroy] True if the stack and all associated history and settings should be deleted.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [stack] Stack name.
  /// [timestamp] The time at which the schedule should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z.
  TtlScheduleArgs({
    this.deleteAfterDestroy,
    required this.organization,
    required this.project,
    required this.stack,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfterDestroy': ?deleteAfterDestroy,
      'organization': organization,
      'project': project,
      'stack': stack,
      'timestamp': timestamp,
    };
  }

  factory TtlScheduleArgs.fromMap(Map<String, dynamic> map) {
    return TtlScheduleArgs(
      deleteAfterDestroy: (() {
        final guardedValue = map['deleteAfterDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      stack: pulumi.Input.fromValue(map['stack'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
    );
  }
}
