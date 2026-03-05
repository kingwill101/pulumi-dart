import 'package:pulumi/pulumi.dart' as pulumi;
import 'drift_schedule_args.dart';

/// A cron schedule to run drift detection.
class DriftSchedule extends pulumi.CustomResource {
  /// Whether any drift detected should be remediated after a drift run.
  late final pulumi.Output<bool?> autoRemediate;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Cron expression for when to run drift detection.
  late final pulumi.Output<String> scheduleCron;
  /// Schedule ID of the created schedule, assigned by Pulumi Cloud.
  late final pulumi.Output<String> scheduleId;
  /// Stack name.
  late final pulumi.Output<String> stack;

  /// Creates a new [DriftSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DriftSchedule]. {@macro pulumi_index_drift_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DriftSchedule(
    String name, {
    DriftScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:DriftSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRemediate = registerOutput<bool?>('autoRemediate');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    scheduleCron = registerOutput<String>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    stack = registerOutput<String>('stack');
  }
}
