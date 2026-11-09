import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_schedule_args.dart';
import 'pulumi_operation.dart';

/// A scheduled recurring or single time run of a pulumi command.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{project}/{stack}/{scheduleId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:DeploymentSchedule my-deployment-schedule my-org/my-project/my-stack/7d3c5e1a-0f8b-4b26-a9d4-3e6f2b8c1a59
/// ```
///
/// The Pulumi Cloud console doesn't show the schedule ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/stacks/my-org/my-project/my-stack/deployments/schedules | jq '.schedules[]'
/// ```
class DeploymentSchedule extends pulumi.CustomResource {
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Which command to run.
  late final pulumi.Output<PulumiOperation> pulumiOperation;
  /// Cron expression for recurring scheduled runs. If you are supplying this, do not supply timestamp.
  late final pulumi.Output<String?> scheduleCron;
  /// Schedule ID of the created schedule, assigned by Pulumi Cloud.
  late final pulumi.Output<String> scheduleId;
  /// Stack name.
  late final pulumi.Output<String> stack;
  /// The time at which the schedule should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z. If you are supplying this, do not supply scheduleCron.
  late final pulumi.Output<String?> timestamp;

  /// Creates a new [DeploymentSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentSchedule]. {@macro pulumi_index_deployment_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentSchedule(
    String name, {
    DeploymentScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:DeploymentSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['organization', 'project', 'stack', 'timestamp']).merge(options),
        ) {
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    pulumiOperation = registerOutput<PulumiOperation>('pulumiOperation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PulumiOperation.fromValue(guardedValue as String); });
    scheduleCron = registerOutput<String?>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    stack = registerOutput<String>('stack');
    timestamp = registerOutput<String?>('timestamp');
  }

  /// Creates a typed reference to an existing [DeploymentSchedule] resource.
  DeploymentSchedule.reference(String urn)
    : super(
        'pulumiservice:index:DeploymentSchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    pulumiOperation = registerOutput<PulumiOperation>('pulumiOperation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PulumiOperation.fromValue(guardedValue as String); });
    scheduleCron = registerOutput<String?>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    stack = registerOutput<String>('stack');
    timestamp = registerOutput<String?>('timestamp');
  }
}
