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
    this.description,
    this.duration,
    required this.instanceFilter,
    this.name,
    required this.oneTimeSchedule,
    this.patchConfig,
    required this.patchDeploymentId,
    this.project,
    required this.recurringSchedule,
    this.rollout,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      instanceFilter: (PatchInstanceFilterOsconfigV1beta.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      oneTimeSchedule: (OneTimeScheduleOsconfigV1beta.fromMap((map['oneTimeSchedule'] as Map).cast<String, dynamic>())).input(),
      patchConfig: map['patchConfig'] == null ? null : (PatchConfigOsconfigV1beta.fromMap((map['patchConfig']! as Map).cast<String, dynamic>())).input(),
      patchDeploymentId: (map['patchDeploymentId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      recurringSchedule: (RecurringScheduleOsconfigV1beta.fromMap((map['recurringSchedule'] as Map).cast<String, dynamic>())).input(),
      rollout: map['rollout'] == null ? null : (PatchRolloutOsconfigV1beta.fromMap((map['rollout']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

