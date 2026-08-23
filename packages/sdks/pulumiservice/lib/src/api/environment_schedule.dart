import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_schedule_args.dart';

/// Creates a new scheduled action for a Pulumi ESC environment. Schedules can be used to automate recurring operations on environments, such as secret rotation. The request body specifies the schedule timing and the action to perform. Returns the created ScheduledAction on success. Requires the secret rotation feature to be enabled for the organization.
class EnvironmentSchedule extends pulumi.CustomResource {
  /// The timestamp when this scheduled action was created.
  late final pulumi.Output<String> created;
  /// The action definition, which varies based on the action kind.
  late final pulumi.Output<Map<String, dynamic>> definition;
  /// The kind of action to be executed.
  late final pulumi.Output<String> kind;
  /// The timestamp of the last execution, if any.
  late final pulumi.Output<String> lastExecuted;
  /// The timestamp when this scheduled action was last modified.
  late final pulumi.Output<String> modified;
  /// The timestamp of the next scheduled execution.
  late final pulumi.Output<String> nextExecution;
  /// The organization ID that owns this scheduled action.
  late final pulumi.Output<String> orgID;
  /// Whether the scheduled action is currently paused.
  late final pulumi.Output<bool> paused;
  /// A cron expression defining the recurring schedule.
  late final pulumi.Output<String?> scheduleCron;
  /// The unique identifier for this scheduled action.
  late final pulumi.Output<String> scheduleID;
  /// A timestamp for a one-time scheduled execution.
  late final pulumi.Output<String?> scheduleOnce;

  /// Creates a new [EnvironmentSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentSchedule]. {@macro pulumi_api_esc_environment_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentSchedule(
    String name, {
    EnvironmentScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:EnvironmentSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    definition = registerOutput<Map<String, dynamic>>('definition');
    kind = registerOutput<String>('kind');
    lastExecuted = registerOutput<String>('lastExecuted');
    modified = registerOutput<String>('modified');
    nextExecution = registerOutput<String>('nextExecution');
    orgID = registerOutput<String>('orgID');
    paused = registerOutput<bool>('paused');
    scheduleCron = registerOutput<String?>('scheduleCron');
    scheduleID = registerOutput<String>('scheduleID');
    scheduleOnce = registerOutput<String?>('scheduleOnce');
  }
}
