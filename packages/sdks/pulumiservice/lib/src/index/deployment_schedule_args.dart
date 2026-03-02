// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pulumi_operation.dart';

/// {@template pulumi_index_deployment_schedule_args_doc}
/// The set of arguments for DeploymentSchedule.
/// {@endtemplate}
/// {@macro pulumi_index_deployment_schedule_args_doc}
class DeploymentScheduleArgs {
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String> project;
  /// Which command to run.
  final pulumi.Input<PulumiOperation> pulumiOperation;
  /// Cron expression for recurring scheduled runs. If you are supplying this, do not supply timestamp.
  final pulumi.Input<String>? scheduleCron;
  /// Stack name.
  final pulumi.Input<String> stack;
  /// The time at which the schedule should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z. If you are supplying this, do not supply scheduleCron.
  final pulumi.Input<String>? timestamp;

  /// Creates a new [DeploymentScheduleArgs].
  /// [organization] Organization name.
  /// [project] Project name.
  /// [pulumiOperation] Which command to run.
  /// [scheduleCron] Cron expression for recurring scheduled runs. If you are supplying this, do not supply timestamp.
  /// [stack] Stack name.
  /// [timestamp] The time at which the schedule should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z. If you are supplying this, do not supply scheduleCron.
  DeploymentScheduleArgs({
    required this.organization,
    required this.project,
    required this.pulumiOperation,
    this.scheduleCron,
    required this.stack,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'project': project,
      'pulumiOperation': pulumi.Input.mapInputValue<PulumiOperation, String>(pulumiOperation, (value) => value.value),
      'scheduleCron': ?scheduleCron,
      'stack': stack,
      'timestamp': ?timestamp,
    };
  }

  factory DeploymentScheduleArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentScheduleArgs(
      organization: (map['organization'] as String).input(),
      project: (map['project'] as String).input(),
      pulumiOperation: (PulumiOperation.fromValue(map['pulumiOperation'] as String)).input(),
      scheduleCron: map['scheduleCron'] == null ? null : (map['scheduleCron']! as String).input(),
      stack: (map['stack'] as String).input(),
      timestamp: map['timestamp'] == null ? null : (map['timestamp']! as String).input(),
    );
  }
}

