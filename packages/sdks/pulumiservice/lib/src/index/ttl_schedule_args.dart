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
      deleteAfterDestroy: map['deleteAfterDestroy'] == null ? null : (map['deleteAfterDestroy']! as bool).input(),
      organization: (map['organization'] as String).input(),
      project: (map['project'] as String).input(),
      stack: (map['stack'] as String).input(),
      timestamp: (map['timestamp'] as String).input(),
    );
  }
}

