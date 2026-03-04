import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_time_schedule_response_osconfig_v1beta.dart';
import 'patch_config_response_osconfig_v1beta.dart';
import 'patch_deployment_osconfig_v1beta_args.dart';
import 'patch_instance_filter_response_osconfig_v1beta.dart';
import 'patch_rollout_response_osconfig_v1beta.dart';
import 'recurring_schedule_response_osconfig_v1beta.dart';

/// Create an OS Config patch deployment.
class PatchDeploymentOsconfigV1beta extends pulumi.CustomResource {
  /// Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String> description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  late final pulumi.Output<String> duration;

  /// VM instances to patch.
  late final pulumi.Output<PatchInstanceFilterResponseOsconfigV1beta>
  instanceFilter;

  /// The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> lastExecuteTime;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  late final pulumi.Output<String> name;

  /// Schedule a one-time execution.
  late final pulumi.Output<OneTimeScheduleResponseOsconfigV1beta>
  oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  late final pulumi.Output<PatchConfigResponseOsconfigV1beta> patchConfig;

  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  late final pulumi.Output<String> patchDeploymentId;
  late final pulumi.Output<String> project;

  /// Schedule recurring executions.
  late final pulumi.Output<RecurringScheduleResponseOsconfigV1beta>
  recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  late final pulumi.Output<PatchRolloutResponseOsconfigV1beta> rollout;

  /// Current state of the patch deployment.
  late final pulumi.Output<String> state;

  /// Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PatchDeploymentOsconfigV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PatchDeploymentOsconfigV1beta]. {@macro pulumi_osconfig_v1beta_patch_deployment_osconfig_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PatchDeploymentOsconfigV1beta(
    String name, {
    PatchDeploymentOsconfigV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:osconfig/v1beta:PatchDeployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    duration = registerOutput<String>('duration');
    instanceFilter = registerOutput<PatchInstanceFilterResponseOsconfigV1beta>(
      'instanceFilter',
    );
    lastExecuteTime = registerOutput<String>('lastExecuteTime');
    this.name = registerOutput<String>('name');
    oneTimeSchedule = registerOutput<OneTimeScheduleResponseOsconfigV1beta>(
      'oneTimeSchedule',
    );
    patchConfig = registerOutput<PatchConfigResponseOsconfigV1beta>(
      'patchConfig',
    );
    patchDeploymentId = registerOutput<String>('patchDeploymentId');
    project = registerOutput<String>('project');
    recurringSchedule = registerOutput<RecurringScheduleResponseOsconfigV1beta>(
      'recurringSchedule',
    );
    rollout = registerOutput<PatchRolloutResponseOsconfigV1beta>('rollout');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
