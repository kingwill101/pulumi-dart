// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_environment_rotation_schedule_args_doc}
/// The set of arguments for EnvironmentRotationSchedule.
/// {@endtemplate}
/// {@macro pulumi_index_environment_rotation_schedule_args_doc}
class EnvironmentRotationScheduleArgs {
  /// Environment name.
  final pulumi.Input<String> environment;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String> project;
  /// Cron expression for recurring scheduled rotations. If you are supplying this, do not supply timestamp.
  final pulumi.Input<String>? scheduleCron;
  /// The time at which the rotation should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z. If you are supplying this, do not supply scheduleCron.
  final pulumi.Input<String>? timestamp;

  /// Creates a new [EnvironmentRotationScheduleArgs].
  /// [environment] Environment name.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [scheduleCron] Cron expression for recurring scheduled rotations. If you are supplying this, do not supply timestamp.
  /// [timestamp] The time at which the rotation should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z. If you are supplying this, do not supply scheduleCron.
  EnvironmentRotationScheduleArgs({
    required pulumi.Output<String> environment,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> project,
    pulumi.Output<String>? scheduleCron,
    pulumi.Output<String>? timestamp,
  }) :
      environment = pulumi.Input.asInput<String>(environment),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asInput<String>(project),
      scheduleCron = pulumi.Input.asOptionalInput<String>(scheduleCron),
      timestamp = pulumi.Input.asOptionalInput<String>(timestamp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'organization': organization,
      'project': project,
      'scheduleCron': ?scheduleCron,
      'timestamp': ?timestamp,
    };
  }

  factory EnvironmentRotationScheduleArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentRotationScheduleArgs(
      environment: pulumi.Output.create<String>(map['environment'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
      scheduleCron: map['scheduleCron'] == null ? null : pulumi.Output.create<String>(map['scheduleCron'] as String),
      timestamp: map['timestamp'] == null ? null : pulumi.Output.create<String>(map['timestamp'] as String),
    );
  }
}

