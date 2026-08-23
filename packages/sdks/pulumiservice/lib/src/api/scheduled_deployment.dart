import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_deployment_args.dart';

/// Creates a custom deployment schedule for a stack using Pulumi Deployments. Custom schedules allow you to automate recurring or one-time Pulumi operations on a stack. The request must include exactly one of 'scheduleCron' (a cron expression for recurring executions, e.g. '0 */4 * * *' for every 4 hours) or 'scheduleOnce' (an ISO 8601 timestamp for a one-time execution). The 'request' field contains the deployment configuration that will be executed on each scheduled run, including the Pulumi operation type and any settings overrides. The stack must have deployment settings configured before a schedule can be created.
class ScheduledDeployment extends pulumi.CustomResource {
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

  /// Creates a new [ScheduledDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledDeployment]. {@macro pulumi_api_deployments_scheduled_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledDeployment(
    String name, {
    ScheduledDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/deployments:ScheduledDeployment',
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
