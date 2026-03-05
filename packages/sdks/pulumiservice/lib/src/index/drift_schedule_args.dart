// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_drift_schedule_args_doc}
/// The set of arguments for DriftSchedule.
/// {@endtemplate}
/// {@macro pulumi_index_drift_schedule_args_doc}
class DriftScheduleArgs {
  /// Whether any drift detected should be remediated after a drift run.
  final pulumi.Input<bool>? autoRemediate;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String> project;
  /// Cron expression for when to run drift detection.
  final pulumi.Input<String> scheduleCron;
  /// Stack name.
  final pulumi.Input<String> stack;

  /// Creates a new [DriftScheduleArgs].
  /// [autoRemediate] Whether any drift detected should be remediated after a drift run.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [scheduleCron] Cron expression for when to run drift detection.
  /// [stack] Stack name.
  DriftScheduleArgs({
    this.autoRemediate,
    required this.organization,
    required this.project,
    required this.scheduleCron,
    required this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRemediate': ?autoRemediate,
      'organization': organization,
      'project': project,
      'scheduleCron': scheduleCron,
      'stack': stack,
    };
  }

  factory DriftScheduleArgs.fromMap(Map<String, dynamic> map) {
    return DriftScheduleArgs(
      autoRemediate: (() { final guardedValue = map['autoRemediate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      scheduleCron: pulumi.Input.fromValue(map['scheduleCron'] as String),
      stack: pulumi.Input.fromValue(map['stack'] as String),
    );
  }
}

