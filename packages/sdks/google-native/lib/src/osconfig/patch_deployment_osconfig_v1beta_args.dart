// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_time_schedule_osconfig_v1beta.dart';
import 'patch_config_osconfig_v1beta.dart';
import 'patch_instance_filter_osconfig_v1beta.dart';
import 'patch_rollout_osconfig_v1beta.dart';
import 'recurring_schedule_osconfig_v1beta.dart';

/// {@template pulumi_osconfig_v1beta_patch_deployment_osconfig_v1beta_args_doc}
/// The set of arguments for PatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_patch_deployment_osconfig_v1beta_args_doc}
class PatchDeploymentOsconfigV1betaArgs {
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final pulumi.Input<String>? duration;
  /// VM instances to patch.
  final pulumi.Input<PatchInstanceFilterOsconfigV1beta> instanceFilter;
  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final pulumi.Input<String>? name;
  /// Schedule a one-time execution.
  final pulumi.Input<OneTimeScheduleOsconfigV1beta> oneTimeSchedule;
  /// Optional. Patch configuration that is applied.
  final pulumi.Input<PatchConfigOsconfigV1beta>? patchConfig;
  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;
  /// Schedule recurring executions.
  final pulumi.Input<RecurringScheduleOsconfigV1beta> recurringSchedule;
  /// Optional. Rollout strategy of the patch job.
  final pulumi.Input<PatchRolloutOsconfigV1beta>? rollout;

  /// Creates a new [PatchDeploymentOsconfigV1betaArgs].
  /// [description] Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Optional. Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [name] Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Optional. Patch configuration that is applied.
  /// [patchDeploymentId] Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [project] Optional.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Optional. Rollout strategy of the patch job.
  PatchDeploymentOsconfigV1betaArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? duration,
    required pulumi.Output<PatchInstanceFilterOsconfigV1beta> instanceFilter,
    pulumi.Output<String>? name,
    required pulumi.Output<OneTimeScheduleOsconfigV1beta> oneTimeSchedule,
    pulumi.Output<PatchConfigOsconfigV1beta>? patchConfig,
    required pulumi.Output<String> patchDeploymentId,
    pulumi.Output<String>? project,
    required pulumi.Output<RecurringScheduleOsconfigV1beta> recurringSchedule,
    pulumi.Output<PatchRolloutOsconfigV1beta>? rollout,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      instanceFilter = pulumi.Input.asInput<PatchInstanceFilterOsconfigV1beta>(instanceFilter),
      name = pulumi.Input.asOptionalInput<String>(name),
      oneTimeSchedule = pulumi.Input.asInput<OneTimeScheduleOsconfigV1beta>(oneTimeSchedule),
      patchConfig = pulumi.Input.asOptionalInput<PatchConfigOsconfigV1beta>(patchConfig),
      patchDeploymentId = pulumi.Input.asInput<String>(patchDeploymentId),
      project = pulumi.Input.asOptionalInput<String>(project),
      recurringSchedule = pulumi.Input.asInput<RecurringScheduleOsconfigV1beta>(recurringSchedule),
      rollout = pulumi.Input.asOptionalInput<PatchRolloutOsconfigV1beta>(rollout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'duration': ?duration,
      'instanceFilter': pulumi.Input.mapInputValue<PatchInstanceFilterOsconfigV1beta, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'name': ?name,
      'oneTimeSchedule': pulumi.Input.mapInputValue<OneTimeScheduleOsconfigV1beta, Map<String, dynamic>>(oneTimeSchedule, (value) => value.toMap()),
      'patchConfig': ?pulumi.Input.mapOptionalInputValue<PatchConfigOsconfigV1beta, Map<String, dynamic>>(patchConfig, (value) => value.toMap()),
      'patchDeploymentId': patchDeploymentId,
      'project': ?project,
      'recurringSchedule': pulumi.Input.mapInputValue<RecurringScheduleOsconfigV1beta, Map<String, dynamic>>(recurringSchedule, (value) => value.toMap()),
      'rollout': ?pulumi.Input.mapOptionalInputValue<PatchRolloutOsconfigV1beta, Map<String, dynamic>>(rollout, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentOsconfigV1betaArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentOsconfigV1betaArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      instanceFilter: pulumi.Output.create<PatchInstanceFilterOsconfigV1beta>(PatchInstanceFilterOsconfigV1beta.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oneTimeSchedule: pulumi.Output.create<OneTimeScheduleOsconfigV1beta>(OneTimeScheduleOsconfigV1beta.fromMap((map['oneTimeSchedule'] as Map).cast<String, dynamic>())),
      patchConfig: map['patchConfig'] == null ? null : pulumi.Output.create<PatchConfigOsconfigV1beta>(PatchConfigOsconfigV1beta.fromMap((map['patchConfig'] as Map).cast<String, dynamic>())),
      patchDeploymentId: pulumi.Output.create<String>(map['patchDeploymentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recurringSchedule: pulumi.Output.create<RecurringScheduleOsconfigV1beta>(RecurringScheduleOsconfigV1beta.fromMap((map['recurringSchedule'] as Map).cast<String, dynamic>())),
      rollout: map['rollout'] == null ? null : pulumi.Output.create<PatchRolloutOsconfigV1beta>(PatchRolloutOsconfigV1beta.fromMap((map['rollout'] as Map).cast<String, dynamic>())),
    );
  }
}

