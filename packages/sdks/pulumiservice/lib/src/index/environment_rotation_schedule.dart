import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_rotation_schedule_args.dart';

/// A scheduled recurring or single time environment rotation.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{project}/{environment}/rotations/{scheduleId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:EnvironmentRotationSchedule my-environment-rotation-schedule my-org/my-project/my-environment/rotations/c2f8a4d6-3e1b-4c97-8b50-1d9e7a2f6c34
/// ```
///
/// The Pulumi Cloud console doesn't show the schedule ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/esc/environments/my-org/my-project/my-environment/schedules | jq '.schedules[]'
/// ```
class EnvironmentRotationSchedule extends pulumi.CustomResource {
  /// Environment name.
  late final pulumi.Output<String> environment;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Cron expression for recurring scheduled rotations. If you are supplying this, do not supply timestamp.
  late final pulumi.Output<String?> scheduleCron;
  /// Schedule ID of the created rotation schedule, assigned by Pulumi Cloud.
  late final pulumi.Output<String> scheduleId;
  /// The time at which the rotation should run, in ISO 8601 format. Eg: 2020-01-01T00:00:00Z. If you are supplying this, do not supply scheduleCron.
  late final pulumi.Output<String?> timestamp;

  /// Creates a new [EnvironmentRotationSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentRotationSchedule]. {@macro pulumi_index_environment_rotation_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentRotationSchedule(
    String name, {
    EnvironmentRotationScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:EnvironmentRotationSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['environment', 'organization', 'project', 'timestamp']).merge(options),
        ) {
    environment = registerOutput<String>('environment');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    scheduleCron = registerOutput<String?>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    timestamp = registerOutput<String?>('timestamp');
  }

  /// Creates a typed reference to an existing [EnvironmentRotationSchedule] resource.
  EnvironmentRotationSchedule.reference(String urn)
    : super(
        'pulumiservice:index:EnvironmentRotationSchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    environment = registerOutput<String>('environment');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    scheduleCron = registerOutput<String?>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    timestamp = registerOutput<String?>('timestamp');
  }
}
