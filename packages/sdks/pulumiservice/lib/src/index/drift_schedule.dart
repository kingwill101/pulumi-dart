import 'package:pulumi/pulumi.dart' as pulumi;
import 'drift_schedule_args.dart';

/// A cron schedule to run drift detection.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{project}/{stack}/drift/{scheduleId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:DriftSchedule my-drift-schedule my-org/my-project/my-stack/drift/7d3c5e1a-0f8b-4b26-a9d4-3e6f2b8c1a59
/// ```
///
/// The Pulumi Cloud console doesn't show the schedule ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/stacks/my-org/my-project/my-stack/deployments/schedules | jq '.schedules[]'
/// ```
class DriftSchedule extends pulumi.CustomResource {
  /// Whether any drift detected should be remediated after a drift run.
  late final pulumi.Output<bool> autoRemediate;
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
          pulumi.CustomResourceOptions(replaceOnChanges: ['organization', 'project', 'stack']).merge(options),
        ) {
    autoRemediate = registerOutput<bool>('autoRemediate');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    scheduleCron = registerOutput<String>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    stack = registerOutput<String>('stack');
  }

  /// Creates a typed reference to an existing [DriftSchedule] resource.
  DriftSchedule.reference(String urn)
    : super(
        'pulumiservice:index:DriftSchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoRemediate = registerOutput<bool>('autoRemediate');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    scheduleCron = registerOutput<String>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    stack = registerOutput<String>('stack');
  }
}
