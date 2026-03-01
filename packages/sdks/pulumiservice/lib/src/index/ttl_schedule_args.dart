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
    pulumi.Output<bool>? deleteAfterDestroy,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> project,
    required pulumi.Output<String> stack,
    required pulumi.Output<String> timestamp,
  }) :
      deleteAfterDestroy = pulumi.Input.asOptionalInput<bool>(deleteAfterDestroy),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asInput<String>(project),
      stack = pulumi.Input.asInput<String>(stack),
      timestamp = pulumi.Input.asInput<String>(timestamp);

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
      deleteAfterDestroy: map['deleteAfterDestroy'] == null ? null : pulumi.Output.create<bool>(map['deleteAfterDestroy'] as bool),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
      stack: pulumi.Output.create<String>(map['stack'] as String),
      timestamp: pulumi.Output.create<String>(map['timestamp'] as String),
    );
  }
}

