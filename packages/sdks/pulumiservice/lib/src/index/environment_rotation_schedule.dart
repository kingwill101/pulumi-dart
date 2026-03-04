import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_rotation_schedule_args.dart';

/// A scheduled recurring or single time environment rotation.
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    environment = registerOutput<String>('environment');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    scheduleCron = registerOutput<String?>('scheduleCron');
    scheduleId = registerOutput<String>('scheduleId');
    timestamp = registerOutput<String?>('timestamp');
  }
}
